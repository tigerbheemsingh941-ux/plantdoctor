import '../models/plant.dart';

List<Map<String, dynamic>> get demoPlants => [
  {
    "name": "Money Plant",
    "scientific": "Epipremnum Aureum",
    "image":
        "https://lh3.googleusercontent.com/aida-public/AB6AXuBOcpB-IKf8dTD9jxI6VlaaBRo5EpHrrOnWoUp32H4Zz1LdoxVSHiyXnKNo-LBEZk5M1abNAY9f3AOCAOTzp2ev3H4U6udNhEhELuASlzBrX-NNoCun7MAN9IP8_4UL3RKR06r259akpmQFMg99WhNw4fz27k9X3YfHbSgYDggX5oI43fS3RBQ2abAOKuoqG6Wf0MSJ8aprHctoQ8l_GU2J5hon4tUSz5pxkUhwmRazBLJDpOh6Y6Smb8noZ8gYauBakK29G45Q4O4",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal":
          "Money Plants thrive best in bright, indirect light.\nWhat to do: Place it near a window where it receives plenty of light, but no direct sun rays.",
      "light_low":
          "Caution: If kept in very low light, the leaves will lose their patterns (variegation) and turn completely green.",
      "light_avoid": "Conversely, harsh direct sunlight can burn the leaves.",
      "water_step1":
          "The root cause of 90% of Money Plant problems is over-watering.",
      "water_step2":
          "In Soil: Water only when the top 1-2 inches of soil feel dry to the touch. Usually, watering 1-2 times a week in summer and once every 10-12 days in winter is sufficient.",
      "water_step3":
          "In Water: If you are growing it in a bottle or jar, change the water every week to ensure the roots get fresh oxygen.",
      "water_frequency": null,
      "soil_type":
          "Soil: Use well-draining soil that doesn't hold excess water. Mixing a bit of cocopeat and sand with regular soil helps improve drainage.",
      "pot_type":
          "Pot: Always choose a pot with drainage holes. If you are using a decorative outer pot, ensure water doesn't collect at the bottom.",
      "maintenance_cleaning":
          "Humidity and Temperature: Money Plants love humidity. If the air in your home is very dry, occasionally spray the leaves with a water bottle (misting).\nIt grows very well in standard room temperatures ranging from 15°C to 35°C.",
      "maintenance_support":
          "Moss Stick: If you want the leaves to grow larger, place a moss stick in the center of the pot. The aerial roots will absorb moisture from the stick, encouraging bigger leaf growth.",
      "maintenance_pruning":
          "Pruning: To make the plant bushier, keep trimming the long vines. New branches will sprout from where you make the cut.",
      "troubleshooting":
          "Yellow Leaves: Over-watering (Reduce watering and let the soil dry out).\nBrown & Dry Leaves: Under-watering or direct sun (Water the plant and move it away from direct sunlight).\nSlow Growth: Lack of nutrients or low light (Apply a little liquid fertilizer and increase light exposure).",
      "warning_note":
          "Important Note: Money Plants can be mildly toxic to pets (dogs and cats). It is better to keep them out of their reach, such as in a hanging basket.",
    },
  },
  {
    "name": "Snake Plant",
    "scientific": "Sansevieria",
    "image":
        "https://lh3.googleusercontent.com/aida-public/AB6AXuBSU7CjUD8Sm6E8h_7qtu7Z_8x5_gf5i2mb9uAY6PAt4a64u4fIErgAo18-Rys1MJiYtjEy9mAH6Fk5m5v3TrZCoi2gz9_vabc2tXg4nypSmiHZ7QLGxmixqqpxWbL6ZYBxkWltcuYgYRDtXCXd4mTTLKVyNf8Vhp5B3pncTRFUle6HHrZBj_rWo-MYw1F0a912ie1pckMbbVH6C0G4vw095NF964tjUphMC9-sqvx-KgyY3uoNoXyuBnjNmC2Gu2kzqH1wAOp-Znc",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal":
          "Snake Plants are very tolerant of low light but grow faster in bright, indirect light.",
      "light_low":
          "They are perfect for low-light corners where other plants might struggle.",
      "light_avoid":
          "Keep out of direct, intense sunlight which can scorch leaves.",
      "water_step1": "Allow the soil to dry out completely between waterings.",
      "water_step2":
          "Water sparingly. Overwatering is the easiest way to kill this plant.",
      "water_step3": "In winter, water only once a month or less.",
      "water_frequency": "Every 2-6 weeks depending on light and season.",
      "soil_type": "Use a free-draining cactus or succulent mix.",
      "pot_type":
          "Pots with drainage holes are essential. Terracotta is good for wicking away moisture.",
      "maintenance_cleaning": "Wipe leaves occasionally to remove dust.",
      "maintenance_support": "Usually self-supporting.",
      "maintenance_pruning": "Remove any mushy or yellow leaves at the base.",
      "troubleshooting":
          "Mushy Leaves: Overwatering (Let it dry out completely).\nWrinkled Leaves: Thirsty (Give it a good drink).\nBrown Tips: Inconsistent watering or cold drafts (Water consistently and keep warm).",
      "warning_note": "Toxic to cats and dogs if ingested.",
    },
  },
  {
    "name": "ZZ Plant",
    "scientific": "Zamioculcas Zamiifolia",
    "image":
        "https://images.unsplash.com/photo-1632207691143-643e2a9a9361?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal":
          "Thrives in medium to low indirect light. Can tolerate bright indirect light.",
      "light_low":
          "Excellent for offices and windowless rooms with fluorescent lighting.",
      "light_avoid": "Avoid direct sunlight which causes leaf burn.",
      "water_step1": "Water only when the soil is completely dry.",
      "water_step2":
          "The plant has rhizomes that store water, making it very drought tolerant.",
      "water_step3": "Better to underwater than overwater.",
      "water_frequency": "Every 2-3 weeks in summer, much less in winter.",
      "soil_type":
          "Well-draining potting mix. Add perlite or sand for better drainage.",
      "pot_type": "Must have drainage holes to prevent root rot.",
      "maintenance_cleaning":
          "Clean the glossy leaves with a damp cloth to keep them shiny and dust-free.",
      "maintenance_support":
          "Generally upright, stems may lean if searching for light.",
      "maintenance_pruning": "Remove yellow leaves near the base.",
      "troubleshooting":
          "Yellow Leaves: Overwatering (Allow soil to dry completely).\nDrooping: Watering issues (Check soil moisture and adjust watering).\nBrown Tips: Dry air or direct sun (Increase humidity; Move to shade).",
      "warning_note":
          "All parts of the plant are poisonous if ingested. Keep away from pets and children.",
    },
  },
  {
    "name": "Monstera Deliciosa",
    "scientific": "Swiss Cheese Plant",
    "image":
        "https://images.unsplash.com/photo-1614594975525-e45190c55d0b?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal":
          "Bright, indirect sunlight is best for large leaves and fenestrations (holes).",
      "light_low":
          "Can tolerate medium light, but growth will be slower and leaves may not split.",
      "light_avoid": "Direct hot sun can scorch the leaves.",
      "water_step1": "Water when the top 2-3 inches of soil are dry.",
      "water_step2": "Water thoroughly until it drains out the bottom.",
      "water_step3":
          "Empty the saucer after watering so it doesn't sit in water.",
      "water_frequency":
          "Every 1-2 weeks, allowing soil to dry out between waterings.",
      "soil_type": "Peat-based potting soil with perlite for aeration.",
      "pot_type":
          "A pot with drainage holes is crucial. Clay or terracotta allows soil to breathe.",
      "maintenance_cleaning":
          "Gently wipe large leaves with a damp cloth to remove dust.",
      "maintenance_support":
          "Use a moss pole or trellis to support its climbing habit and encourage larger leaves.",
      "maintenance_pruning":
          "Prune to control size or remove damaged leaves. Air roots can be tucked into the soil.",
      "troubleshooting":
          "Yellowing Leaves: Overwatering or lack of nutrients (Adjust watering; Apply fertilizer).\nBrown Tips: Low humidity or dry soil (Mist leaves; Water if dry).\nNo Splits: Not enough light (Move to brighter location).",
      "warning_note": "Toxic to pets and humans if ingested.",
    },
  },
  {
    "name": "Spider Plant",
    "scientific": "Chlorophytum Comosum",
    "image":
        "https://images.unsplash.com/photo-1572688484279-06b53a3eb26c?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal": "Bright, indirect light maintains the variegation.",
      "light_low":
          "Tolerates lower light, but growth may slow and stripes may fade.",
      "light_avoid": "Direct sun can burn the leaves.",
      "water_step1": "Keep soil lightly moist but not soggy.",
      "water_step2": "Water when the top inch of soil feels dry.",
      "water_step3":
          "Use distilled or rain water if possible to prevent brown tips from fluoride.",
      "water_frequency": "Once a week usually sufficient.",
      "soil_type": "General purpose, well-draining potting soil.",
      "pot_type":
          "Any pot with drainage. They don't mind being slightly root-bound.",
      "maintenance_cleaning": "Rinse leaves occasionally to remove dust.",
      "maintenance_support":
          "Ideal for hanging baskets where 'spiderettes' can dangle.",
      "maintenance_pruning":
          "Trim brown tips if needed. Cut off plantlets to propagate.",
      "troubleshooting":
          "Brown Tips: Fluoride in water or dry air (Use distilled water; Mist plant).\nFading Color: Needs more light (Move to brighter spot).\nLimp Leaves: Thirsty or too hot (Water plant; Move to cooler spot).",
      "warning_note":
          "Non-toxic and safe for pets (though cats may try to eat it like grass).",
    },
  },
  {
    "name": "Peace Lily",
    "scientific": "Spathiphyllum",
    "image":
        "https://images.unsplash.com/photo-1593691509543-c55ce32e01b5?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal": "Bright, indirect light encourages blooming.",
      "light_low": "Tolerates low light well, but may not flower much.",
      "light_avoid": "Direct sunlight will burn leaves quickly.",
      "water_step1": "Keep soil consistently moist but never soggy.",
      "water_step2": "Water when the top inch of soil is dry.",
      "water_step3":
          "Plant will droop dramatically when thirsty, but perks up quickly after watering.",
      "water_frequency":
          "Check weekly. Maintain moisture without waterlogging.",
      "soil_type": "Rich, loose organic potting mix.",
      "pot_type":
          "Pot with drainage. repot annually or when roots fill the pot.",
      "maintenance_cleaning":
          "Wipe broad leaves to remove dust and improve breathing.",
      "maintenance_support": "Self-supporting.",
      "maintenance_pruning":
          "Cut off spent flowers at the base to encourage new blooms. Remove yellow leaves.",
      "troubleshooting":
          "Drooping: Needs water (Water immediately).\nBrown Tips: Low humidity, over-fertilizing, or tap water (Mist leaves; Flush soil; Use filtered water).\nNo Flowers: Needs more light (Move to brighter indirect light).",
      "warning_note": "Mildly toxic to pets and humans. Keep out of reach.",
    },
  },
  {
    "name": "Fiddle Leaf Fig",
    "scientific": "Ficus Lyrata",
    "image":
        "https://images.unsplash.com/photo-1545241047-6083a3684587?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal":
          "Bright, filtered light. Needs a sunny spot (east or west window).",
      "light_low": "Does not tolerate low light well.",
      "light_avoid":
          "Harsh, direct midday sun can burn leaves, but some morning sun is good.",
      "water_step1": "Water when the top inch of soil is dry.",
      "water_step2": "Water thoroughly until it drains, then empty the saucer.",
      "water_step3": "Consistent watering schedule is key.",
      "water_frequency": "Every 7-10 days. Adjust for season.",
      "soil_type": "High-quality, well-draining potting soil.",
      "pot_type": "Heavy pot to support the tree. Ensure drainage holes.",
      "maintenance_cleaning": "Dust leaves regularly for health and shine.",
      "maintenance_support": "Stake tall plants to keep them upright.",
      "maintenance_pruning":
          "Prune top for bushier growth. Remove damaged leaves.",
      "troubleshooting":
          "Dropping Leaves: Environmental stress (Avoid drafts and moving the plant).\nBrown Spots: Root rot or irregular watering (Ensure drainage; Water consistently).\nSlow Growth: Low light or nutrients (Increase light; Fertilize monthly).",
      "warning_note": "Toxic to dogs and cats if ingested.",
    },
  },
  {
    "name": "Aloe Vera",
    "scientific": "Aloe Barbadensis Miller",
    "image":
        "https://images.unsplash.com/photo-1596547610057-0a25691bcbed?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal": "Bright, indirect sunlight. Can handle some direct sun.",
      "light_low": "Will grow slowly and may become leggy in low light.",
      "light_avoid": "Intense direct sun can turn leaves brown or orange.",
      "water_step1": "Water deeply but infrequently.",
      "water_step2": "Allow soil to dry out completely between waterings.",
      "water_step3": "Never let it sit in water.",
      "water_frequency": "Every 2-3 weeks in summer, very sparingly in winter.",
      "soil_type": "Cactus or succulent potting mix.",
      "pot_type": "Terracotta pots are ideal for aeration and drying out soil.",
      "maintenance_cleaning": "Wipe dust off leaves.",
      "maintenance_support": "Self-supporting.",
      "maintenance_pruning":
          "Harvest outer leaves for gel as needed. Remove dried lower leaves.",
      "troubleshooting":
          "Mushy Leaves: Overwatering (Stop watering; Allow soil to dry).\nBrown Tips: Sunburn or underwatering (Move to shade; Water deeply).\nThin Leaves: Insufficient water or light (Water more often; Increase light).",
      "warning_note":
          "Gel is safe externally, but skin can be toxic if ingested by pets.",
    },
  },
  {
    "name": "Rubber Plant",
    "scientific": "Ficus Elastica",
    "image":
        "https://images.unsplash.com/photo-1592150621744-aca64f48394a?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal": "Bright, indirect light.",
      "light_low":
          "Tolerates lower light than other Ficus, but variegation may fade.",
      "light_avoid": "Hot direct sun can scorch leaves.",
      "water_step1": "Keep soil slightly moist in growing season.",
      "water_step2": "Water when top inch of soil is dry.",
      "water_step3": "Reduce watering in winter.",
      "water_frequency": "Weekly in summer, bi-weekly in winter.",
      "soil_type": "Well-draining, aerated potting mix.",
      "pot_type": "Sturdy pot with drainage.",
      "maintenance_cleaning":
          "Wipe large leaves frequently to keep them glossy and healthy.",
      "maintenance_support": "May need staking as it gets taller.",
      "maintenance_pruning":
          "Prune top to encourage branching. Watch out for milky sap.",
      "troubleshooting":
          "Yellow Leaves: Overwatering (Reduce watering frequency).\nLeaf Drop: Shock or drafts (Keep environment stable).\nCurling Leaves: Underwatering or heat (Water deeply; Check temperature).",
      "warning_note":
          "Sap is toxic and can irritate skin. Toxic to pets if ingested.",
    },
  },
  {
    "name": "Succulents",
    "scientific": "Crassulaceae / Various",
    "image":
        "https://images.unsplash.com/photo-1459156212016-c812468e2115?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "details": {
      "light_ideal": "Bright light, often enjoy some direct sun.",
      "light_low": "Usually etioliate (stretch) and lose color in low light.",
      "light_avoid": "Sudden intense sun can burn plants not acclimated.",
      "water_step1": "Soak and dry method.",
      "water_step2":
          "Water until it runs out the bottom, then wait until soil is bone dry.",
      "water_step3": "When leaves wrinkle, they need water.",
      "water_frequency": "Every 2-4 weeks depending on heat and dryness.",
      "soil_type": "Fast-draining cactus/succulent mix essential.",
      "pot_type":
          "Pots with large drainage holes. Shallow pots often work well.",
      "maintenance_cleaning":
          "Remove dead lower leaves to prevent rot and pests.",
      "maintenance_support": "None usually needed.",
      "maintenance_pruning": "Trim leggy tops and replant them to propagate.",
      "troubleshooting":
          "Mushy/Black: Root rot from overwatering (Cut rot; Replant in dry soil).\nStretching: Low light (Move to direct sunlight).\nShriveled: Underwatered (Water deeply).",
      "warning_note":
          "Toxicity varies by species; research specific types for pets.",
    },
  },
];
