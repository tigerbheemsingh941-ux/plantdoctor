import 'package:flutter/material.dart';

import 'widgets/plant_card.dart';
import 'widgets/add_plant_card.dart';
import 'widgets/add_plant_dialog.dart';

import 'plant_detail_screen.dart';
import '../../data/plant_data.dart';
import '../../models/plant.dart';

import '../../data/plant_repository.dart';

class PlanCareScreen extends StatefulWidget {
  const PlanCareScreen({super.key});

  @override
  State<PlanCareScreen> createState() => _PlanCareScreenState();
}

class _PlanCareScreenState extends State<PlanCareScreen> {
  List<Map<String, dynamic>> _plants = [];
  final PlantRepository _plantRepository = PlantRepository();

  @override
  void initState() {
    super.initState();
    _loadPlants();
  }

  Future<void> _loadPlants() async {
    final userPlants = await _plantRepository.loadUserPlants();
    setState(() {
      _plants = [...userPlants, ...demoPlants];
    });
  }

  Future<void> _addPlant(String name, String imagePath) async {
    final newPlant = {
      "name": name,
      "scientific": "Custom Plant",
      "image": imagePath,
      "status": PlantStatus.healthy,
      "details": {"light_ideal": "Custom care details not yet added."},
    };

    await _plantRepository.saveUserPlant(newPlant);

    setState(() {
      _plants.insert(0, newPlant);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Plant Care"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemCount: _plants.length + 1, // +1 for the Add Plant card
          itemBuilder: (context, index) {
            if (index == 0) {
              return AddPlantCard(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AddPlantDialog(
                      onAdd: (name, imagePath) {
                        _addPlant(name, imagePath);
                      },
                    ),
                  );
                },
              );
            }

            final plant = _plants[index - 1];
            return PlantCard(
              name: plant['name'],
              scientificName: plant['scientific'],
              imageUrl: plant['image'],
              status: plant['status'],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlantDetailScreen(plant: plant),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
