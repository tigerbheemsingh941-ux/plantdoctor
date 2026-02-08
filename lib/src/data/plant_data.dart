import '../models/plant.dart';

List<Map<String, dynamic>> get demoPlants => [
  {
    "name": "Money Plant",
    "scientific": "Epipremnum Aureum",
    "description":
        "A popular houseplant known for its heart-shaped leaves and air-purifying qualities. It brings good luck and prosperity to your home.",
    "image":
        "https://lh3.googleusercontent.com/aida-public/AB6AXuBOcpB-IKf8dTD9jxI6VlaaBRo5EpHrrOnWoUp32H4Zz1LdoxVSHiyXnKNo-LBEZk5M1abNAY9f3AOCAOTzp2ev3H4U6udNhEhELuASlzBrX-NNoCun7MAN9IP8_4UL3RKR06r259akpmQFMg99WhNw4fz27k9X3YfHbSgYDggX5oI43fS3RBQ2abAOKuoqG6Wf0MSJ8aprHctoQ8l_GU2J5hon4tUSz5pxkUhwmRazBLJDpOh6Y6Smb8noZ8gYauBakK29G45Q4O4",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "A hardy plant with upright, sword-like leaves. It's excellent for improving indoor air quality and tolerates low light potentially better than any other plant.",
    "image":
        "https://lh3.googleusercontent.com/aida-public/AB6AXuBSU7CjUD8Sm6E8h_7qtu7Z_8x5_gf5i2mb9uAY6PAt4a64u4fIErgAo18-Rys1MJiYtjEy9mAH6Fk5m5v3TrZCoi2gz9_vabc2tXg4nypSmiHZ7QLGxmixqqpxWbL6ZYBxkWltcuYgYRDtXCXd4mTTLKVyNf8Vhp5B3pncTRFUle6HHrZBj_rWo-MYw1F0a912ie1pckMbbVH6C0G4vw095NF964tjUphMC9-sqvx-KgyY3uoNoXyuBnjNmC2Gu2kzqH1wAOp-Znc",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "With its waxy, emerald green leaves, the ZZ plant is stylish and incredibly easy to care for, thriving in low light and needing little water.",
    "image":
        "https://images.unsplash.com/photo-1632207691143-643e2a9a9361?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "Famous for its large, split leaves, this tropical beauty adds a dramatic jungle touch to any room. It loves bright, indirect light.",
    "image":
        "https://images.unsplash.com/photo-1614594975525-e45190c55d0b?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "An adaptable plant with arching leaves and baby plantlets. It's safe for pets, great for hanging baskets, and very easy to propagate.",
    "image":
        "https://images.unsplash.com/photo-1572688484279-06b53a3eb26c?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "Elegant white blooms and dark green leaves make this a favorite. It signals when it's thirsty by drooping and perks right back up after watering.",
    "image":
        "https://images.unsplash.com/photo-1593691509543-c55ce32e01b5?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "A stunning statement plant with large, violin-shaped leaves. It loves bright light and adds impressive height and structure to your space.",
    "image":
        "https://images.unsplash.com/photo-1545241047-6083a3684587?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "A medicinal succulent with thick, fleshy leaves containing soothing gel. It loves sunny spots and requires minimal watering.",
    "image":
        "https://images.unsplash.com/photo-1596547610057-0a25691bcbed?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "Features glossy, dark leaves that can grow into an impressive tree. It's a robust and attractive indoor plant that makes a bold statement.",
    "image":
        "https://images.unsplash.com/photo-1592150621744-aca64f48394a?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
    "description":
        "A diverse group of water-storing plants in various shapes and colors. Perfect for sunny windowsills and those who want low maintenance greenery.",
    "image":
        "https://images.unsplash.com/photo-1459156212016-c812468e2115?q=80&w=1000&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
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
  {
    "name": "Jade Plant",
    "scientific": "Crassula ovata",
    "description":
        "A resilient succulent with thick, woody stems and oval-shaped leaves.",
    "image":
        "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct to indirect sun.",
      "light_low": "Can tolerate some shade but may grow leggy.",
      "light_avoid": "Low light for extended periods.",
      "water_step1": "Check if soil is completely dry.",
      "water_step2": "Water thoroughly until it drains.",
      "water_step3": "Empty saucer immediately.",
      "water_frequency": "Every 2-3 weeks, less in winter.",
      "soil_type": "Well-draining succulent mix.",
      "pot_type": "Terracotta or clay pot for drainage.",
      "maintenance_cleaning": "Wipe dust from leaves.",
      "maintenance_support": "Prune to shape as it grows top-heavy.",
      "maintenance_pruning": "Trim leggy branches.",
      "troubleshooting":
          "Shriveling: Thirsty (Water it).\nSquishy/Yellow: Root rot (Let dry/Repot).\nDropping leaves: Low light (Move to sun).",
      "warning_note": "Toxic to dogs and cats.",
    },
  },
  {
    "name": "Areca Palm",
    "scientific": "Dypsis lutescens",
    "description": "Feathery fronds that add a tropical touch to any room.",
    "image":
        "https://images.unsplash.com/photo-1628108422634-8da04043236e?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates lower light but grows slower.",
      "light_avoid": "Direct hot sun (scorches leaves).",
      "water_step1": "Check top inch of soil.",
      "water_step2": "Water if dry to touch.",
      "water_step3": "Ensure drainage.",
      "water_frequency": "Every 1-2 weeks; keep moist but not soggy.",
      "soil_type": "Peat-based potting mix.",
      "pot_type": "Standard pot with good drainage.",
      "maintenance_cleaning": "Spray fronds to remove dust.",
      "maintenance_support": "Remove brown or yellow fronds.",
      "maintenance_pruning": "Trim brown tips with shears.",
      "troubleshooting":
          "Brown tips: Dry air (Mist/Humidify).\nYellow leaves: Underwatering (Check soil).\nSpeckles: Mites (Wash leaves).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Chinese Evergreen",
    "scientific": "Aglaonema",
    "description": "Attractive variegated foliage and easy to care for.",
    "image":
        "https://images.unsplash.com/photo-1616627546686-3f1a265691a3?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Low to medium indirect light.",
      "light_low": "Excellent for low light.",
      "light_avoid": "Direct sun (burns leaves).",
      "water_step1": "Allow soil to dry partially.",
      "water_step2": "Water moderately.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Well-draining potting soil.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Wipe leaves with damp cloth.",
      "maintenance_support": "None usually needed.",
      "maintenance_pruning": "Remove dead leaves at base.",
      "troubleshooting":
          "Curled leaves: Dry/Too much light (Move/Water).\nYellowing/Mushy: Overwatered (Let dry).\nBrown tips: Fluoride in water (Use distilled water).",
      "warning_note": "Toxic to dogs and cats.",
    },
  },
  {
    "name": "Dracaena (Corn Plant)",
    "scientific": "Dracaena fragrans",
    "description": "Tall, corn-like leaves on woody stems.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect to low light.",
      "light_low": "Tolerates shade well.",
      "light_avoid": "Direct sun.",
      "water_step1": "Check top inch of soil.",
      "water_step2": "Water when dry.",
      "water_step3": "Ensure good drainage.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Loose, well-draining mix.",
      "pot_type": "Deep pot for roots.",
      "maintenance_cleaning": "Dust leaves regularly.",
      "maintenance_support": "Stake tall stems if needed.",
      "maintenance_pruning": "Trim brown tips.",
      "troubleshooting":
          "Brown tips: Inconsistent water/Fluoride (Use filtered water).\nYellow leaves: Overwatering (Reduce water).\nDrooping: Root rot or cold (Check roots/Temp).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Anthurium",
    "scientific": "Anthurium andraeanum",
    "description": "Known for its waxy, bright red 'flowers' (spathes).",
    "image":
        "https://images.unsplash.com/photo-1598287532395-5d518206d289?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Will survive but flower less.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Check top inch of soil.",
      "water_step2": "Water when dry to touch.",
      "water_step3": "Keep humid.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Coarse, well-draining orchid mix.",
      "pot_type": "Pot with drainage.",
      "maintenance_cleaning": "Wipe shiny leaves.",
      "maintenance_support": "Remove spent flowers.",
      "maintenance_pruning": "Trim yellow leaves.",
      "troubleshooting":
          "No flowers: Low light (Move to brighter spot).\nBrown leaf tips: Dry air (Mist).\nYellow leaves: Overwatering (Check soil).",
      "warning_note": "Toxic to pets if ingested.",
    },
  },
  {
    "name": "Boston Fern",
    "scientific": "Nephrolepis exaltata",
    "description": "Classic fern with arching, feathery fronds.",
    "image":
        "https://images.unsplash.com/photo-1624599763750-2e4313f89551?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates some shade.",
      "light_avoid": "Direct sun and drafts.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Do not let dry out.",
      "water_step3": "Mist often.",
      "water_frequency": "Weekly or more often.",
      "soil_type": "Rich, peat-based mix.",
      "pot_type": "Hanging basket or standard pot.",
      "maintenance_cleaning": "Mist to clean.",
      "maintenance_support": "Remove brown fronds.",
      "maintenance_pruning": "Trim dead growth.",
      "troubleshooting":
          "Yellowing/Dropping: Dry air/Low water (Mist/Water).\nBrown tips: Low humidity (Use pebble tray).\nPale fronds: Needs fertilizer (Feed lightly).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Prayer Plant",
    "scientific": "Maranta leuconeura",
    "description": "Leaves fold up at night like hands in prayer.",
    "image":
        "https://images.unsplash.com/photo-1616627581179-840939ca6be8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Low to medium indirect light.",
      "light_low": "Good for lower light.",
      "light_avoid": "Direct sun (fades patterns).",
      "water_step1": "Keep soil moist but not soggy.",
      "water_step2": "Use warm water.",
      "water_step3": "Mist leaves.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Well-draining, peat-rich mix.",
      "pot_type": "Wide, shallow pot.",
      "maintenance_cleaning": "Wipe leaves gently.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim to encourage bushiness.",
      "troubleshooting":
          "Curling leaves: Too bright/Dry (Move/Mist).\nBrown tips: Low humidity (Increase humidity).\nWashed out: Too much sun (Move to shade).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Calathea",
    "scientific": "Calathea (Goeppertia)",
    "description": "Stunning patterned leaves, often with purple undersides.",
    "image":
        "https://images.unsplash.com/photo-1612368739673-9ef0d1997bd0?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Medium indirect light.",
      "light_low": "Tolerates low light.",
      "light_avoid": "Direct sun.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Use distilled/rain water.",
      "water_step3": "Does not like drying out.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Peat-based, moisture-retentive.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Wipe leaves often.",
      "maintenance_support": "Remove yellow leaves.",
      "maintenance_pruning": "Trim brown edges.",
      "troubleshooting":
          "Crispy edges: Tap water/Dry air (Switch water/Mist).\nCurling: Thirsty or cold (Check soil/Temp).\nFading: Too much light (Move).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Bird of Paradise",
    "scientific": "Strelitzia reginae",
    "description": "Large, banana-like leaves and exotic flowers.",
    "image":
        "https://images.unsplash.com/photo-1545145803-34e85949d528?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct or indirect light.",
      "light_low": "Will not thrive in shade.",
      "light_avoid": "Dark corners.",
      "water_step1": "Allow soil to dry slightly.",
      "water_step2": "Water generously.",
      "water_step3": "Ensure drainage.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Rich, loamy soil.",
      "pot_type": "Large, stable pot.",
      "maintenance_cleaning": "Dust large leaves.",
      "maintenance_support": "Remove old leaves.",
      "maintenance_pruning": "Trim split leaves.",
      "troubleshooting":
          "Split leaves: Normal (Wind/Age).\nCurling: Thirsty (Water).\nNo flowers: Not enough light (Move to sun).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "English Ivy",
    "scientific": "Hedera helix",
    "description": "Vigorous trailing vine with lobed leaves.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Medium to bright indirect light.",
      "light_low": "Tolerates low light.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Surface soil should dry.",
      "water_step2": "Water thoroughly.",
      "water_step3": "Prefers cooler temps.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Standard potting mix.",
      "pot_type": "Hanging basket or climbing support.",
      "maintenance_cleaning": "Shower foliage occasionally.",
      "maintenance_support": "Train on trellis if desired.",
      "maintenance_pruning": "Trim to manage growth.",
      "troubleshooting":
          "Spider mites: Webs (Wash/Treat).\nDry/Crispy: Hot/Dry air (Mist/Move Cooler).\nLeggy: Low light (Move brighter).",
      "warning_note": "Toxic to pets and humans.",
    },
  },
  {
    "name": "String of Pearls",
    "scientific": "Curio rowleyanus",
    "description": "Unique trailing succulent with pea-shaped leaves.",
    "image":
        "https://images.unsplash.com/photo-1596547609652-9cf5d8d71321?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light; some direct sun.",
      "light_low": "Will shrivel in low light.",
      "light_avoid": "Dark shade.",
      "water_step1": "Soil must be bone dry.",
      "water_step2": "Water deeply but infrequently.",
      "water_step3": "Needs good airflow.",
      "water_frequency": "Every 2-4 weeks.",
      "soil_type": "Gritty cactus mix.",
      "pot_type": "Shallow hanging pot.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "Handle gently (pearls fall easily).",
      "maintenance_pruning": "Trim straggly strands.",
      "troubleshooting":
          "Mushy pearls: Overwatering (Stop watering).\nShriveled: Thirsty (Water).\nFlat pearls: Needs more light (Move to window).",
      "warning_note": "Toxic to humans and pets.",
    },
  },
  {
    "name": "Philodendron Heartleaf",
    "scientific": "Philodendron hederaceum",
    "description": "Fast-growing vine with heart-shaped leaves.",
    "image":
        "https://images.unsplash.com/photo-1600411833196-7c1f6b1a8b90?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Medium indirect light.",
      "light_low": "Tolerates low light well.",
      "light_avoid": "Direct sun.",
      "water_step1": "Top inch of soil dry.",
      "water_step2": "Water thoroughly.",
      "water_step3": "Empty saucer.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Standard potting mix.",
      "pot_type": "Hanging or climbing pot.",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "Can climb moss pole.",
      "maintenance_pruning": "Trim to bush out.",
      "troubleshooting":
          "Yellow leaves: Overwatering (Check soil).\nBrown tips: Irregular watering (Be consistent).\nLeggy: Low light (Move brighter).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Croton",
    "scientific": "Codiaeum variegatum",
    "description": "Vibrant, colorful leaves in red, orange, and yellow.",
    "image":
        "https://images.unsplash.com/photo-1609142621730-db3293839541?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct or indirect light.",
      "light_low": "Colors will fade in shade.",
      "light_avoid": "Low light.",
      "water_step1": "Keep soil evenly moist.",
      "water_step2": "Water when top drying slightly.",
      "water_step3": "High humidity needed.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-draining soil.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Wipe leaves often.",
      "maintenance_support": "Protect from drafts.",
      "maintenance_pruning": "Trim top to bush.",
      "troubleshooting":
          "Leaf drop: Moved/Drafts (Stabilize environment).\nFading color: Low light (More sun).\nDrooping: Thirsty (Water).",
      "warning_note": "Toxic to pets and humans.",
    },
  },
  {
    "name": "African Violet",
    "scientific": "Saintpaulia ionantha",
    "description": "Compact plant with fuzzy leaves and purple/pink flowers.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Will not bloom in dark.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Keep soil slightly moist.",
      "water_step2": "Water from bottom.",
      "water_step3": "Avoid water on leaves.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "African Violet mix.",
      "pot_type": "Self-watering pot usually good.",
      "maintenance_cleaning": "Use soft brush on leaves.",
      "maintenance_support": "Deadhead spent blooms.",
      "maintenance_pruning": "Remove old outer leaves.",
      "troubleshooting":
          "Spots on leaves: Cold water/Water on leaves (Bottom water).\nNo blooms: Low light (Move brighter).\nCrown rot: Overwatering (Let dry).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Bamboo Palm",
    "scientific": "Chamaedorea seifrizii",
    "description": "Clumping palm with reed-like stems.",
    "image":
        "https://images.unsplash.com/photo-1614594975525-e45190c55d0b?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Direct sun.",
      "water_step1": "Keep moist but not wet.",
      "water_step2": "Water when surface dry.",
      "water_step3": "Ensuring drainage.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Peat-based mix.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Shower to remove dust/mites.",
      "maintenance_support": "Remove brown fronds.",
      "maintenance_pruning": "Do not prune stems.",
      "troubleshooting":
          "Brown tips: Dry air (Mist).\nYellowing: Overwatering (Check soil).\nWebs under leaves: Spider mites (Wash/Treat).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Cast Iron Plant",
    "scientific": "Aspidistra elatior",
    "description": "Nearly indestructible plant with dark green leaves.",
    "image":
        "https://images.unsplash.com/photo-1629156476229-250882e37f2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Low to medium light.",
      "light_low": "Thrives in shade.",
      "light_avoid": "Direct sun (bleaches leaves).",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water moderately.",
      "water_step3": "Forgives neglect.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Standard potting mix.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Wipe large leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove ragged leaves at base.",
      "troubleshooting":
          "Brown tips: Nutrients/Water (Flush soil).\nYellow leaves: Old age/Overwatering (Check soil).\nSplit leaves: Physical damage (Normal).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Christmas Cactus",
    "scientific": "Schlumbergera",
    "description": "Trailing cactus that blooms in winter.",
    "image":
        "https://images.unsplash.com/photo-1608973686884-0b7012574676?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates lower light.",
      "light_avoid": "Direct summer sun.",
      "water_step1": "Keep slightly moist.",
      "water_step2": "Water when top inch dry.",
      "water_step3": "Increase humidity for buds.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Rich, well-draining mix.",
      "pot_type": "Hanging or standard pot.",
      "maintenance_cleaning": "Wipe segments.",
      "maintenance_support": "Deadhead spent blooms.",
      "maintenance_pruning": "Twist off segments to shape.",
      "troubleshooting":
          "Bud drop: Drafts/Moved (Do not move in bloom).\nRed leaves: Too much sun (Move to shade).\nWilting: Rot or Dry (Check soil).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Ponytail Palm",
    "scientific": "Beaucarnea recurvata",
    "description": "Bulbous trunk with curly, grass-like leaves.",
    "image":
        "https://images.unsplash.com/photo-1616627988031-f912e383a7db?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct light.",
      "light_low": "Grows very slowly in low light.",
      "light_avoid": "Dark spots.",
      "water_step1": "Allow soil to expire completely.",
      "water_step2": "Bulb stores water.",
      "water_step3": "Water rarely.",
      "water_frequency": "Every 3-4 weeks.",
      "soil_type": "Cactus/Succulent mix.",
      "pot_type": "Clay pot.",
      "maintenance_cleaning": "Dust leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim brown tips.",
      "troubleshooting":
          "Mushy stem: Overwatering (Deadly - stop watering).\nBrown tips: Dry air (Mist).\nPale leaves: Low light (Move to sun).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Air Plants",
    "scientific": "Tillandsia",
    "description": "Epiphytes that grow without soil.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright filtered light.",
      "light_low": "Will rot in dark.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Soak in water for 20-30 mins.",
      "water_step2": "Shake off excess water.",
      "water_step3": "Dry upside down completely.",
      "water_frequency": "Soak weekly; mist in between.",
      "soil_type": "None (No soil).",
      "pot_type": "Mounted or in glass.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "Trim roots (only for anchor).",
      "maintenance_pruning": "Trim brown tips.",
      "troubleshooting":
          "Rotting base: Trapped water (Ensure drying).\nDried/Curled: Thirsty (Soak overnight).\nBrown tips: Dry air (Mist more).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Yucca Cane",
    "scientific": "Yucca elephantipes",
    "description": "Sword-like leaves on a woody trunk.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct or indirect light.",
      "light_low": "Tolerates some shade.",
      "light_avoid": "Low light.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Well-draining mix.",
      "pot_type": "Heavy pot (top heavy).",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "Stake if needed.",
      "maintenance_pruning": "Remove dead lower leaves.",
      "troubleshooting":
          "Yellow leaves: Overwatering (Check roots).\nBrown spots: Fungal (Improve airflow).\nDrooping: Low light (Move brighter).",
      "warning_note": "Toxic to dogs and cats.",
    },
  },
  {
    "name": "Money Tree",
    "scientific": "Pachira aquatica",
    "description": "Tree with braided trunk and lucky 5-leaf clusters.",
    "image":
        "https://images.unsplash.com/photo-1628108422634-8da04043236e?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates medium light.",
      "light_avoid": "Direct sun.",
      "water_step1": "Allow top 2-3 inches to dry.",
      "water_step2": "Water thoroughly.",
      "water_step3": "Ensure drainage.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Well-draining, sandy peat mix.",
      "pot_type": "Standard pot with holes.",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "Maintain braid as it grows.",
      "maintenance_pruning": "Prune to maintain shape.",
      "troubleshooting":
          "Yellow leaves: Overwatering (Let dry).\nLeaf drop: Drafts/Moved (Stabilize).\nBrown edges: Dry air (Mist).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Orchid",
    "scientific": "Phalaenopsis",
    "description": "Elegant, long-lasting blooms on a tall spike.",
    "image":
        "https://images.unsplash.com/photo-1598287532395-5d518206d289?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Will not bloom.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Soak roots for 10-15 mins.",
      "water_step2": "Drain completely.",
      "water_step3": "Never wet the crown.",
      "water_frequency": "Every 1-2 weeks (when roots gray).",
      "soil_type": "Orchid bark mix (no soil).",
      "pot_type": "Clear pot with holes.",
      "maintenance_cleaning": "Wipe leaves gently.",
      "maintenance_support": "Stake flower spikes.",
      "maintenance_pruning": "Trim spent spike (above node).",
      "troubleshooting":
          "Wrinkled leaves: Thirsty (Soak).\nYellow leaves: Root rot/Old age (Check roots).\nBud blast: Drafts/Temp change (Stabilize).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Peperomia",
    "scientific": "Peperomia (various)",
    "description": "Compact plant with fleshy, textured leaves.",
    "image":
        "https://images.unsplash.com/photo-1624599763750-2e4313f89551?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Medium to bright indirect light.",
      "light_low": "Tolerates fluorescent light.",
      "light_avoid": "Direct sun.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water sparingly.",
      "water_step3": "Sensitive to overwatering.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Well-draining mix.",
      "pot_type": "Small pot.",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim to shape.",
      "troubleshooting":
          "Dropping leaves: Cold/Overwatering (Check soil).\nScabs on leaves: Edema (Reduce water).\nDull leaves: Low light (Move brighter).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Begonia",
    "scientific": "Begonia (Rex/Cane)",
    "description": "Sought after for colorful, patterned foliage.",
    "image":
        "https://images.unsplash.com/photo-1614594975525-e45190c55d0b?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Leggy in low light.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Keep soil slightly moist.",
      "water_step2": "Allow top inch to dry.",
      "water_step3": "Avoid wet leaves.",
      "water_frequency": "Weekly.",
      "soil_type": "Light, airy mix.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Brush off dust.",
      "maintenance_support": "Stake cane types.",
      "maintenance_pruning": "Pinch back tips.",
      "troubleshooting":
          "Powdery mildew: Wet leaves (Improve airflow).\nCrispy edges: Low humidity (Use pebble tray).\nDropping: Overwatering (Check soil).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Burro's Tail",
    "scientific": "Sedum morganianum",
    "description": "Trailing succulent with delicate, overlapping leaves.",
    "image":
        "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright direct/indirect light.",
      "light_low": "Will get leggy/pale.",
      "light_avoid": "Low light.",
      "water_step1": "Soil must be dry.",
      "water_step2": "Water thoroughly.",
      "water_step3": "Drain well.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Cactus mix.",
      "pot_type": "Hanging pot.",
      "maintenance_cleaning": "None (fragile).",
      "maintenance_support": "Be very gentle.",
      "maintenance_pruning": "Plant fallen 'beans'.",
      "troubleshooting":
          "Falling leaves: Normal handling/Overwatering (Don't touch).\nShriveled: Thirsty (Water).\nMushy: Rot (Stop watering).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Haworthia",
    "scientific": "Haworthia",
    "description": "Small, zebra-striped succulent rosettes.",
    "image":
        "https://images.unsplash.com/photo-1596547609652-9cf5d8d71321?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates lower light than most succulents.",
      "light_avoid": "Direct hot sun.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water lightly.",
      "water_step3": "Drain well.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Succulent mix.",
      "pot_type": "Small, shallow pot.",
      "maintenance_cleaning": "Brush dust off.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove dead bottom leaves.",
      "troubleshooting":
          "Red leaves: Sun stress (Move to shade).\nMushy: Overwatering (Let dry).\nShriveled: Underwatered (Water).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Sago Palm",
    "scientific": "Cycas revoluta",
    "description": "Ancient cycad with stiff, feathery fronds.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect to direct light.",
      "light_low": "Grows very slowly.",
      "light_avoid": "Deep shade.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water deeply.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Sandy, well-draining soil.",
      "pot_type": "Sturdy pot.",
      "maintenance_cleaning": "Hose down foliage.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove only completely brown fronds.",
      "troubleshooting":
          "Yellow leaves: Overwatering/Nutrient deficiency (Check soil/Feed).\nScale: Insects (Treat immediately).\nBrown tips: Dry air (Mist).",
      "warning_note": "Highly toxic/Fatal to pets.",
    },
  },
  {
    "name": "Majesty Palm",
    "scientific": "Ravenea rivularis",
    "description": "Regal palm that loves humidity and moisture.",
    "image":
        "https://images.unsplash.com/photo-1628108422634-8da04043236e?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Will decline.",
      "light_avoid": "Direct hot sun/Darkness.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Do not let dry out fully.",
      "water_step3": "Humidity is key.",
      "water_frequency": "Weekly (or more).",
      "soil_type": "Acidic, peat-based mix.",
      "pot_type": "Pot with drainage.",
      "maintenance_cleaning": "Mist/Shower often.",
      "maintenance_support": "Remove brown fronds.",
      "maintenance_pruning": "Trim brown tips.",
      "troubleshooting":
          "Brown fronds: Dry soil/Air (Water more/Humidify).\nYellowing: Nutrient deficiency/Overwatering (Feed/Check).\nSpider mites: Dry air (Mist/Wash).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Umbrella Tree",
    "scientific": "Schefflera",
    "description": "Umbrella-like leaflets on long stems.",
    "image":
        "https://images.unsplash.com/photo-1616627988031-f912e383a7db?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Tolerates medium light.",
      "light_avoid": "Direct sun.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Soak thoroughy.",
      "water_step3": "Drain well.",
      "water_frequency": "Every 1-2 weeks.",
      "soil_type": "Standard potting mix.",
      "pot_type": "Standard heavy pot.",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "Rotate for even growth.",
      "maintenance_pruning": "Prune to shape/control height.",
      "troubleshooting":
          "Leaf drop: Overwatering/Drafts (Check soil/Move).\nLeggy: Low light (Move brighter).\nStickiness: Scale/Aphids (Treat).",
      "warning_note": "Toxic to dogs and cats.",
    },
  },
  {
    "name": "Wax Plant",
    "scientific": "Hoya",
    "description": "Vining plant with thick waxy leaves and star flowers.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Will not bloom.",
      "light_avoid": "Direct sun.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water deeply.",
      "water_step3": "Drought tolerant.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Orchid/Succulent mix.",
      "pot_type": "Hanging or trellis.",
      "maintenance_cleaning": "Wipe leaves.",
      "maintenance_support": "Train on support.",
      "maintenance_pruning": "Do not remove flower spurs.",
      "troubleshooting":
          "Wrinkled leaves: Thirsty (Soak).\nNo blooms: Young plant/Low light (Wait/More light).\nYellowing: Wet feet (Repot).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Asparagus Fern",
    "scientific": "Asparagus setaceus",
    "description": "Feathery foliage; fuzzy but prickly stems.",
    "image":
        "https://images.unsplash.com/photo-1624599763750-2e4313f89551?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Indoor",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Yellows in shade.",
      "light_avoid": "Direct sun.",
      "water_step1": "Keep nicely moist.",
      "water_step2": "Do not let dry out.",
      "water_step3": "Mist often.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich potting mix.",
      "pot_type": "Hanging or standard.",
      "maintenance_cleaning": "Mist.",
      "maintenance_support": "Trim wild stems.",
      "maintenance_pruning": "Cut back old yellow stems.",
      "troubleshooting":
          "Yellow needles: Dry/Dark (Water/Move).\nBrown stems: Old age/Drought (Trim).\nShedding: Dry air (Humidify).",
      "warning_note": "Toxic to dogs and cats.",
    },
  },
  {
    "name": "Sugar Maple",
    "scientific": "Acer saccharum",
    "description": "Famous for brilliant fall color and maple syrup.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade when young.",
      "light_avoid": "Extreme heat/drought.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Water deeply in dry spells.",
      "water_step3": "Mulch to retain moisture.",
      "water_frequency": "Weekly (young); As needed (mature).",
      "soil_type": "Deep, fertile, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves in fall.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune in late summer/early fall.",
      "troubleshooting":
          "Leaf scorch: Drought (Water deeply).\nTar spot: Cosmetic loss (Rake leaves).\nDecline: Road salt (Avoid salt).",
      "warning_note": "Shallow roots can lift sidewalks.",
    },
  },
  {
    "name": "White Oak",
    "scientific": "Quercus alba",
    "description": "Majestic, long-lived hardwood with wide canopy.",
    "image":
        "https://images.unsplash.com/photo-1453230806017-56d48518b6df?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Crowded spacing.",
      "water_step1": "Water young trees weekly.",
      "water_step2": "Deep watering for taproot.",
      "water_step3": "Drought tolerant once established.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Deep, moist, well-drained, acidic.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune in winter (dormancy).",
      "troubleshooting":
          "Yellow leaves: Iron chlorosis (Acidify soil).\nLeaf blight: Anthracnose (Fungicide).\nDieback: Oak wilt (Professional help).",
      "warning_note": "Hard to transplant (deep taproot).",
    },
  },
  {
    "name": "Red Oak",
    "scientific": "Quercus rubra",
    "description": "Fast-growing oak with red fall foliage.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Fair shade tolerance.",
      "light_avoid": "Dark shade.",
      "water_step1": "Keep moist first year.",
      "water_step2": "Water deeply during drought.",
      "water_step3": "Mulch to cool roots.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Sandy/loamy, acidic, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune in winter.",
      "troubleshooting":
          "Wilt: Oak wilt (Avoid spring pruning).\nYellowing: High pH (Acidify soil).\nDefoliation: Caterpillars (Control pests).",
      "warning_note": "Toxic to horses (acorns/leaves).",
    },
  },
  {
    "name": "Douglas Fir",
    "scientific": "Pseudotsuga menziesii",
    "description": "Iconic evergreen timber tree.",
    "image":
        "https://images.unsplash.com/photo-1596712391689-543166291583?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant when young.",
      "light_avoid": "Deep shade.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Mist in dry heat.",
      "water_step3": "Good drainage essential.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Moist, acidic, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Clean fallen needles.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal needed.",
      "troubleshooting":
          "Needle cast: Fungus (Fungicide).\nYellow needles: Root rot (Improve drainage).\nDefoliation: Tussock moth (Control pests).",
      "warning_note": "Large size; drops cones/needles.",
    },
  },
  {
    "name": "Loblolly Pine",
    "scientific": "Pinus taeda",
    "description": "Fast-growing southern pine.",
    "image":
        "https://images.unsplash.com/photo-1502082553048-f009c37129b9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Shade.",
      "water_step1": "Drought tolerant once established.",
      "water_step2": "Water weekly when young.",
      "water_step3": "Avoid swampy conditions.",
      "water_frequency": "As needed.",
      "soil_type": "Acidic clay or sandy soil.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake needles.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove dead lower branches.",
      "troubleshooting":
          "Boring insects: Bark beetles (Remove tree).\nRust: Fusiform rust (Prune galls).\nBrown needles: Drought stress (Water).",
      "warning_note": "Flammable needles.",
    },
  },
  {
    "name": "Eastern White Pine",
    "scientific": "Pinus strobus",
    "description": "Soft, blue-green needles; fast growing.",
    "image":
        "https://images.unsplash.com/photo-1546252923-263d90610582?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates some shade.",
      "light_avoid": "City pollution/Salt.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Sensitive to drought.",
      "water_step3": "Good drainage needed.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Fertile, moist, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake needles.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Candle pruning for shape.",
      "troubleshooting":
          "White blisters: Blister rust (Prune/Remove).\nYellowing: Road salt (Flush soil).\nTip blight: Fungus (Fungicide).",
      "warning_note": "Branches break in ice storms.",
    },
  },
  {
    "name": "American Elm",
    "scientific": "Ulmus americana",
    "description": "Classic vase-shaped shade tree.",
    "image":
        "https://images.unsplash.com/photo-1513212558550-9856cc6b377b?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Crowding.",
      "water_step1": "Water regularly.",
      "water_step2": "Mulch to retain moisture.",
      "water_step3": "Tolerates wet soil.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained loam.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune in late fall/winter.",
      "troubleshooting":
          "Wilt: Dutch Elm Disease (Select resistant varieties).\nLeaf holes: Elm leaf beetle (Insecticide).\nYellowing: Black leaf spot (Rake leaves).",
      "warning_note": "Susceptible to Dutch Elm Disease.",
    },
  },
  {
    "name": "Bald Cypress",
    "scientific": "Taxodium distichum",
    "description": "Deciduous conifer; loves water.",
    "image":
        "https://images.unsplash.com/photo-1508316279184-7a9117b1d43a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Dry sandy soil.",
      "water_step1": "Thrives in wet soil.",
      "water_step2": "Tolerates standing water.",
      "water_step3": "Water frequently.",
      "water_frequency": "Keep moist.",
      "soil_type": "Acidic, wet, sandy or clay.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake fallen needles.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove dead wood.",
      "troubleshooting":
          "Yellowing: Chlorosis (Acidify soil).\nMites: Spruce mites (Hose off).\nBlight: Twig blight (Prune).",
      "warning_note": "Develops 'knees' in wet soil.",
    },
  },
  {
    "name": "Flowering Dogwood",
    "scientific": "Cornus florida",
    "description": "Showy spring bracts and red fall berries.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Partial shade.",
      "light_low": "Full shade reduces blooms.",
      "light_avoid": "Hot afternoon sun.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Mulch root zone.",
      "water_step3": "Water during drought.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, organic, well-drained.",
      "pot_type": "Small ornamental tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune after flowering.",
      "troubleshooting":
          "Spots: Anthracnose (Fungicide/Hygiene).\nWhite dust: Powdery mildew (Airflow).\nWilting: Drought stress (Water).",
      "warning_note": "Susceptible to anthracnose.",
    },
  },
  {
    "name": "American Beech",
    "scientific": "Fagus grandifolia",
    "description": "Smooth gray bark; golden bronze fall color.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Compacted soil.",
      "water_step1": "Moist, well-drained soil.",
      "water_step2": "Drought sensitive.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal needed.",
      "troubleshooting":
          "White wax: Woolly aphid (Insecticide).\nBark sores: Beech bark disease (Remove tree).\nHoles: Borers (Maintain health).",
      "warning_note": "Surface roots inhibit grass.",
    },
  },
  {
    "name": "Quaking Aspen",
    "scientific": "Populus tremuloides",
    "description": "White bark; leaves tremble in wind.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Heat/Humidity.",
      "water_step1": "Keep moist.",
      "water_step2": "Water during drought.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist, well-drained.",
      "pot_type": "Landscape tree.",
      "maintenance_cleaning": "Clean suckers.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove suckers/dead wood.",
      "troubleshooting":
          "Black spots: Ink spot fungus (Prune).\nCankers: Cytospora (Maintain health).\nDefoliation: Caterpillars (Control pests).",
      "warning_note": "Spreads aggressively by suckers.",
    },
  },
  {
    "name": "Ponderosa Pine",
    "scientific": "Pinus ponderosa",
    "description": "Large western pine; orange-red bark.",
    "image":
        "https://images.unsplash.com/photo-1549419266-4e5cb42a77f9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Wet soil.",
      "water_step1": "Deep watering.",
      "water_step2": "Very drought tolerant.",
      "water_step3": "Allow to dry out.",
      "water_frequency": "Monthly (established).",
      "soil_type": "Deep, well-drained, sandy.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake needles.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Yellowing: Scale insects (Insecticide).\nBark holes: Bark beetles (Remove tree).\nRed needles: Needle blight (Fungicide).",
      "warning_note": "Needles toxic to cattle.",
    },
  },
  {
    "name": "Eastern Red Cedar",
    "scientific": "Juniperus virginiana",
    "description": "Rugged evergreen; aromatic wood.",
    "image":
        "https://images.unsplash.com/photo-1547672224-5dc3884b2374?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates some shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Highly drought tolerant.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Rarely (established).",
      "soil_type": "Adapts to poor/rocky soil.",
      "pot_type": "Landscape tree/Screen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "None needed.",
      "troubleshooting":
          "Brown galls: Cedar-apple rust (Prune galls).\nWebs: Bagworms (Pick off/Spray).\nBrowning: Mites (Hose off).",
      "warning_note": "Host for Cedar-Apple Rust.",
    },
  },
  {
    "name": "Black Walnut",
    "scientific": "Juglans nigra",
    "description": "Valuable hardwood; produces edible nuts.",
    "image":
        "https://images.unsplash.com/photo-1502082553048-f009c37129b9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Crowding.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Water deeply during drought.",
      "water_step3": "Good drainage needed.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Deep, fertile, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves/nuts.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune in late winter.",
      "troubleshooting":
          "Yellowing: Drought stress (Water).\nWebs: Fall webworm (Prune nests).\nCankers: Thousand Cankers Disease (No cure).",
      "warning_note": "Roots secrete Juglone toxin (kills plants).",
    },
  },
  {
    "name": "Sweetgum",
    "scientific": "Liquidambar styraciflua",
    "description": "Star-shaped leaves; brilliant fall color.",
    "image":
        "https://images.unsplash.com/photo-1508316279184-7a9117b1d43a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates some shade.",
      "light_avoid": "Alkaline soil.",
      "water_step1": "Keep moist.",
      "water_step2": "Tolerates wet soil.",
      "water_step3": "Water during drought.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, moist, deep soil.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake seed balls.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune to shape.",
      "troubleshooting":
          "Yellow leaves: Chlorosis (Acidify soil).\nScale: Gloomy scale (Horticultural oil).\nBleeding bark: Borers (Insecticide).",
      "warning_note": "Spiky fruit balls are a hazard.",
    },
  },
  {
    "name": "Sycamore",
    "scientific": "Platanus occidentalis",
    "description": "Massive tree with peeling white/gray bark.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "Dry soil.",
      "water_step1": "Needs abundant water.",
      "water_step2": "Thrives near water.",
      "water_step3": "Drought causes leaf drop.",
      "water_frequency": "Freuqently.",
      "soil_type": "Moist, rich, deep soil.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake excessive bark/leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove dead wood.",
      "troubleshooting":
          "Leaf blight: Anthracnose (Fungicide helpful).\nLace bugs: Stippled leaves (Insecticide).\nScorch: Heat/Drought (Water deeply).",
      "warning_note": "Aggressive roots; frequent litter.",
    },
  },
  {
    "name": "Tulip Poplar",
    "scientific": "Liriodendron tulipifera",
    "description": "Tall straight trunk; tulip-shaped flowers.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Dry compacted soil.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Water deeply in summer.",
      "water_step3": "Mulch root zone.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove dead branches.",
      "troubleshooting":
          "Sticky drip: Aphids (Insecticide).\nYellow spots: Scale (Horticutural oil).\nEarly leaf drop: Drought (Water more).",
      "warning_note": "Wood is brittle; breaks in storms.",
    },
  },
  {
    "name": "Southern Magnolia",
    "scientific": "Magnolia grandiflora",
    "description": "Glossy evergreen leaves; huge white blooms.",
    "image":
        "https://images.unsplash.com/photo-1587588354456-ae2d9972c471?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Exposed windy sites.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Water weekly.",
      "water_step3": "Mulch to retain water.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, well-drained.",
      "pot_type": "Large ornamental tree.",
      "maintenance_cleaning": "Rake tough leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal needed.",
      "troubleshooting":
          "White bumps: Scale insects (Oil spray).\nLeaf spots: Algal leaf spot (Remove leaves).\nWinter burn: Cold wind (Protect/Mulch).",
      "warning_note": "Heavy litter of leaves/cones.",
    },
  },
  {
    "name": "Black Cherry",
    "scientific": "Prunus serotina",
    "description": "Common wild cherry; bark looks like burnt chips.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Keep moist.",
      "water_step2": "Water during dry spells.",
      "water_step3": "Well-drained soil essential.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, fertile.",
      "pot_type": "Wild/Landscape tree.",
      "maintenance_cleaning": "Rake fruit (stains).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove black knots.",
      "troubleshooting":
          "Webs in branches: Tent caterpillars (Remove nests).\nBlack galls: Black knot fungus (Prune out).\nLeaf spots: Cherry leaf spot (Fungicide).",
      "warning_note": "Wilted leaves toxic (cyanide).",
    },
  },
  {
    "name": "Boxelder",
    "scientific": "Acer negundo",
    "description": "Fast growing maple; ash-like leaves.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "None (very adaptable).",
      "water_step1": "Tolerates wet and dry.",
      "water_step2": "Water to establish.",
      "water_step3": "Drought tolerant when old.",
      "water_frequency": "Monthly (established).",
      "soil_type": "Any soil type.",
      "pot_type": "Landscape tree.",
      "maintenance_cleaning": "Rake seeds.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove broken limbs.",
      "troubleshooting":
          "Red bugs: Boxelder bugs (Nuisance).\nBroken limbs: Weak wood (Prune).\nRot: Heart rot (Maintain health).",
      "warning_note": "Weak wood; attracts bugs.",
    },
  },
  {
    "name": "Silver Maple",
    "scientific": "Acer saccharinum",
    "description": "Fast growing; silver leaf undersides.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Dry uplands.",
      "water_step1": "Keep moist.",
      "water_step2": "Tolerates flooding.",
      "water_step3": "Water frequently.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, acidic.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake seeds/leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Train young to single trunk.",
      "troubleshooting":
          "Black spots: Tar spot (Rake leaves).\nYellowing: Chlorosis (Acidify soil).\nBreakage: Storm damage (Prune weak crotches).",
      "warning_note": "Aggressive roots clog pipes.",
    },
  },
  {
    "name": "Honey Locust",
    "scientific": "Gleditsia triacanthos",
    "description": "Fine textured foliage; filtered shade.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Drought tolerant.",
      "water_step2": "Water weekly.",
      "water_step3": "Tolerates salt/heat.",
      "water_frequency": "As needed.",
      "soil_type": "Adapts to any soil.",
      "pot_type": "Street/Lawm tree.",
      "maintenance_cleaning": "Rake pods (if thorny type).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune to shape.",
      "troubleshooting":
          "Cankers: Thyronectria (Keep tree healthy).\nMites: Spider mites (Spray).\nDefoliation: Mimosa webworm (Control).",
      "warning_note": "Wild types have dangerous thorns.",
    },
  },
  {
    "name": "Red Bud",
    "scientific": "Cercis canadensis",
    "description": "Pink flowers on bare branches in spring.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Wet feet.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Water during drought.",
      "water_step3": "Mulch root zone.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, well-drained.",
      "pot_type": "Ornamental tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune after flowering.",
      "troubleshooting":
          "Dieback: Canker (Prune below infection).\nWilt: Verticillium (Remove tree if severe).\nLeaves chewed: Leafcutter bees (Cosmetic).",
      "warning_note": "Relatively short-lived.",
    },
  },
  {
    "name": "Paper Birch",
    "scientific": "Betula papyrifera",
    "description": "Striking white peeling bark.",
    "image":
        "https://images.unsplash.com/photo-1546252923-263d90610582?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Hot dry locations.",
      "water_step1": "High water need.",
      "water_step2": "Keep roots cool and moist.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, acidic, sandy/loam.",
      "pot_type": "Landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune ONLY in summer (bleeds sap).",
      "troubleshooting":
          "Dieback: Bronze Birch Borer (Keep moist/Cool).\nBrown patches: Leaf miner (Insecticide).\nScorch: Heat stress (Water/Mulch).",
      "warning_note": "Very susceptible to borer in heat.",
    },
  },
  {
    "name": "Live Oak",
    "scientific": "Quercus virginiana",
    "description": "Broad evergreen oak of the South.",
    "image":
        "https://images.unsplash.com/photo-1453230806017-56d48518b6df?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Freeze zone 6 or lower.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant mature.",
      "water_step3": "Good drainage.",
      "water_frequency": "Monthly (established).",
      "soil_type": "Sandy, acidic, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves (spring).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune for structure.",
      "troubleshooting":
          "Wilt: Oak wilt (Monitor).\nYellowing: Iron chlorosis (Acidify soil).\nGalls: Wasp galls (Cosmetic).",
      "warning_note": "Spreads very wide; lifts hardscape.",
    },
  },

  {
    "name": "Willow Oak",
    "scientific": "Quercus phellos",
    "description": "Oak with narrow, willow-like leaves; excellent shade.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "Alkaline soil.",
      "water_step1": "Keep moist.",
      "water_step2": "Tolerates wet soil.",
      "water_step3": "Water during drought.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, moist.",
      "pot_type": "Street/Landscape tree.",
      "maintenance_cleaning": "Rake fine leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune for structure.",
      "troubleshooting":
          "Yellow leaves: Iron chlorosis (Acidify soil).\nScale: Oak scale (Oil spray).\nGall: Oak galls (Cosmetic).",
      "warning_note": "Acorns can be messy.",
    },
  },
  {
    "name": "American Basswood",
    "scientific": "Tilia americana",
    "description": "Large heart-shaped leaves; fragrant creamy flowers.",
    "image":
        "https://images.unsplash.com/photo-1513212558550-9856cc6b377b?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Dry soil.",
      "water_step1": "Needs consistent moisture.",
      "water_step2": "Drought sensitive.",
      "water_step3": "Mulch root zone.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist, deep.",
      "pot_type": "Large shade tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove suckers.",
      "troubleshooting":
          "Holes in leaves: Japanese beetles (Control).\nSticky leaves: Aphids (Wash).\nScorch: Heat/Drought (Water).",
      "warning_note": "Soft wood; can break in storms.",
    },
  },
  {
    "name": "Eastern Hemlock",
    "scientific": "Tsuga canadensis",
    "description": "Graceful evergreen with feathery flat needles.",
    "image":
        "https://images.unsplash.com/photo-1546252923-263d90610582?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Partial shade to full shade.",
      "light_low": "Very shade tolerant.",
      "light_avoid": "Hot afternoon sun/Wind.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Intolerant of drought.",
      "water_step3": "Mist in dry weather.",
      "water_frequency": "Weekly.",
      "soil_type": "Cool, moist, acidic.",
      "pot_type": "Landscape/Screen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Shear for hedges if desired.",
      "troubleshooting":
          "White wool: Woolly Adelgid (Treat immediately/Fatal).\nMites: Spruce mites (Hose off).\nNeedle drop: Drought (Water).",
      "warning_note": "Woolly Adelgid is a serious threat.",
    },
  },
  {
    "name": "Black Gum",
    "scientific": "Nyssa sylvatica",
    "description": "Spectacular scarlet fall foliage; horizontal branches.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Alkaline soil.",
      "water_step1": "Tolerates wet soil/flooding.",
      "water_step2": "Water to establish.",
      "water_step3": "Drought tolerant once established.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, moist.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Leaf spot: Fungus (Rake leaves).\nYellowing: High pH (Acidify soil).\nCanker: Fungus (Prune).",
      "warning_note": "Taproot makes transplanting hard.",
    },
  },
  {
    "name": "Sassafras",
    "scientific": "Sassafras albidum",
    "description": "Three leaf shapes (mitten); orange fall color.",
    "image":
        "https://images.unsplash.com/photo-1587588354456-ae2d9972c471?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Dry alkaline soil.",
      "water_step1": "Keep moist.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Good drainage.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, loam.",
      "pot_type": "Native landscape.",
      "maintenance_cleaning": "Clean suckers.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove root suckers.",
      "troubleshooting":
          "White dust: Powdery mildew (Ignore/Fungicide).\nWilt: Verticillium (Remove).\nChewed leaves: Caterpillars (Spicebush swallowtail host).",
      "warning_note": "Suckers to form thickets.",
    },
  },
  {
    "name": "Hackberry",
    "scientific": "Celtis occidentalis",
    "description": "Tough tree with corky, warty bark.",
    "image":
        "https://images.unsplash.com/photo-1513212558550-9856cc6b377b?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "None (very tough).",
      "water_step1": "Drought tolerant.",
      "water_step2": "Water to establish.",
      "water_step3": "Tolerates wind/pollution.",
      "water_frequency": "Monthly.",
      "soil_type": "Adapts to any soil.",
      "pot_type": "Street/Park tree.",
      "maintenance_cleaning": "Rake berries.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune 'witches brooms'.",
      "troubleshooting":
          "Brooms: Mite/Fungus galls (Prune aesthetics).\nLeaf bumps: Nipple gall (Cosmetic).\nYellowing: High pH (Adaptable but watch).",
      "warning_note": "Bark is very rough/warty.",
    },
  },
  {
    "name": "Serviceberry",
    "scientific": "Amelanchier arborea",
    "description": "Early white spring blooms; edible purple berries.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Partial shade to full sun.",
      "light_low": "Woodland understory.",
      "light_avoid": "Hot dry sites.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Water during drought.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, moist, organic.",
      "pot_type": "Ornamental/Edible.",
      "maintenance_cleaning": "Bird droppings (they eat berries).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune suckers.",
      "troubleshooting":
          "Orange spots: Cedar-apple rust (Remove cedar host).\nWebs: Webworms (Prune).\nLeaf spot: Entomosporium (Fungicide).",
      "warning_note": "Rust disease common near cedars.",
    },
  },
  {
    "name": "Red Mulberry",
    "scientific": "Morus rubra",
    "description": "Native fruit tree with blackberry-like fruits.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Patios (staining fruit).",
      "water_step1": "Keep moist.",
      "water_step2": "Drought tolerant mature.",
      "water_step3": "Tolerates pollution.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist.",
      "pot_type": "Backyard fruit.",
      "maintenance_cleaning": "Fruit stains pavement.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune winter.",
      "troubleshooting":
          "Popcorn disease: Fungus on fruit (Remove bad fruit).\nSpots: Leaf spot (Rake).\nWebs: Fall webworm (Prune).",
      "warning_note": "Fruit stains clothes and concrete.",
    },
  },
  {
    "name": "Northern Catalpa",
    "scientific": "Catalpa speciosa",
    "description": "Giant heart leaves; orchid-like flowers; long pods.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Exposed storms (brittle).",
      "water_step1": "Tolerates wet and dry.",
      "water_step2": "Water in drought.",
      "water_step3": "Very adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Any soil.",
      "pot_type": "Open space tree.",
      "maintenance_cleaning": "Rake pods/leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune for structure.",
      "troubleshooting":
          "Defoliation: Catalpa sphinx moth (Fish bait).\nWhite dust: Mildew (Cosmetic).\nWilt: Verticillium (Remove).",
      "warning_note": "Messy pods and leaves.",
    },
  },
  {
    "name": "Pawpaw",
    "scientific": "Asimina triloba",
    "description": "Tropical-looking leaves; custard-like fruit.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Partial shade (young); Full sun (fruit).",
      "light_low": "Understory native.",
      "light_avoid": "Wind/Dry soil.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "High water need.",
      "water_step3": "Mulch organic matter.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, deep.",
      "pot_type": "Fruit patch.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "Hand pollinate for fruit.",
      "maintenance_pruning": "Prune suckers.",
      "troubleshooting":
          "No fruit: Pollination failure (Hand pollinate/Add genetic variety).\nBlack spots: Fruit spot (Fungicide).\nChewed leaves: Zebra swallowtail (Host plant).",
      "warning_note": "Plant 2+ varieties for fruit.",
    },
  },
  {
    "name": "American Holly",
    "scientific": "Ilex opaca",
    "description": "Evergreen pyramid with spiny leaves and red berries.",
    "image":
        "https://images.unsplash.com/photo-1608973686884-0b7012574676?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Windy winter spots.",
      "water_step1": "Keep moist.",
      "water_step2": "Mulch to protect roots.",
      "water_step3": "Acidic soil essential.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, well-drained.",
      "pot_type": "Specimen/Hedge.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Shear for shape.",
      "troubleshooting":
          "Yellowing: High pH (Acidify soil).\nTunnels in leaves: Leaf miner (Insecticide).\nNo berries: No male plant (Plant male 'Jersey Knight').",
      "warning_note": "Berries toxic to humans/pets.",
    },
  },
  {
    "name": "Green Ash",
    "scientific": "Fraxinus pennsylvanica",
    "description": "Fast growing shade tree; compound leaves.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "None (adaptable).",
      "water_step1": "Tolerates wet and dry.",
      "water_step2": "Water to establish.",
      "water_step3": "Hardy.",
      "water_frequency": "Weekly.",
      "soil_type": "Any soil.",
      "pot_type": "Street tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune dead wood.",
      "troubleshooting":
          "D-shaped holes: Emerald Ash Borer (FATAL - Treat or Remove).\nSpots: Anthracnose (Cosmetic).\nWeak wood: Storm damage (Prune).",
      "warning_note": "EAB kills this tree; treatments required.",
    },
  },

  {
    "name": "Osage Orange",
    "scientific": "Maclura pomifera",
    "description": "Dense, thorny tree; produces large green 'hedge apples'.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "None (very tough).",
      "water_step1": "Extremely drought tolerant.",
      "water_step2": "Water to establish.",
      "water_step3": "Tolerates poor soil.",
      "water_frequency": "Monthly.",
      "soil_type": "Any soil.",
      "pot_type": "Windbreak/Hedge.",
      "maintenance_cleaning": "Clear fallen fruit (messy).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune thorns if near paths.",
      "troubleshooting":
          "Yellow leaves: Normal in fall (Clear).\nFruit rot: Messy (Cleanup).\nThorns: Hazard (Prune lower branches).",
      "warning_note": "Thorns can puncture tires; heavy fruit.",
    },
  },
  {
    "name": "Kentucky Coffeetree",
    "scientific": "Gymnocladus dioicus",
    "description": "Unique double-compound leaves; large pods.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "None.",
      "water_step1": "Drought tolerant.",
      "water_step2": "Water to establish.",
      "water_step3": "Deep roots.",
      "water_frequency": "Monthly.",
      "soil_type": "Deep, rich, moist.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake pods/stems.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Leaf litter: Large stems (Rake).\nNo leaves: Late to leaf out in spring (Normal).\nPods: Messy (Plant male tree if preferred).",
      "warning_note": "Seeds toxic if eaten raw.",
    },
  },
  {
    "name": "Persimmon",
    "scientific": "Diospyros virginiana",
    "description": "Blocky bark; sweet orange fruit after frost.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Dry sandy soil (needs moisture).",
      "water_step1": "Keep moist.",
      "water_step2": "Drought tolerant mature.",
      "water_step3": "Taproot sensitive.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist, well-drained.",
      "pot_type": "Fruit/Landscape tree.",
      "maintenance_cleaning": "Fruit mess.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune suckers.",
      "troubleshooting":
          "Leaf spot: Fungus (Rake leaves).\nWebworms: Caterpillars (Prune nests).\nWilt: Verticillium (Remove).",
      "warning_note": "Unripe fruit is very astringent.",
    },
  },
  {
    "name": "Cucumber Tree",
    "scientific": "Magnolia acuminata",
    "description": "Hardy native magnolia; cucumber-like fruit.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Polluted sites.",
      "water_step1": "Keep moist.",
      "water_step2": "Water weekly.",
      "water_step3": "Mulch root zone.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, moist.",
      "pot_type": "Large shade tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Scale: Magnolia scale (Horticultural oil).\nLeaf spot: Fungus (Cosmetic).\nYellowing: High pH (Acidify).",
      "warning_note": "Large leaves can smother grass.",
    },
  },
  {
    "name": "Butternut",
    "scientific": "Juglans cinerea",
    "description": "White walnut; spreading crown.",
    "image":
        "https://images.unsplash.com/photo-1502082553048-f009c37129b9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Crowding.",
      "water_step1": "Moist, rich soil.",
      "water_step2": "Water to establish.",
      "water_step3": "Well-drained.",
      "water_frequency": "Weekly.",
      "soil_type": "Deep, fertile.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake nuts.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune late winter.",
      "troubleshooting":
          "Canker: Butternut canker (Major threat/No cure).\nCrown dieback: Canker (Remove).\nWebworms: Caterpillars (Prune).",
      "warning_note": "Endangered by Butternut Canker.",
    },
  },
  {
    "name": "Shellbark Hickory",
    "scientific": "Carya laciniosa",
    "description": "Huge nuts; shaggy bark strips.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant young.",
      "light_avoid": "Dry soil.",
      "water_step1": "Tolerates wet soil.",
      "water_step2": "Thrives in bottomlands.",
      "water_step3": "Water frequently.",
      "water_frequency": "Weekly.",
      "soil_type": "Deep, moist, fertile.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake large nuts/husks.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Scab: Fungus on nuts (Fungicide).\nLeaf spot: Anthracnose (Cosmetic).\nFall webworm: Nests (Prune).",
      "warning_note": "Nuts are heavy; litter problem.",
    },
  },
  {
    "name": "Shagbark Hickory",
    "scientific": "Carya ovata",
    "description": "Bark peels in long shaggy plates; tasty nuts.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Compacted soil.",
      "water_step1": "Keep moist.",
      "water_step2": "Drought tolerant mature.",
      "water_step3": "Taproot deep.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained.",
      "pot_type": "Large landscape tree.",
      "maintenance_cleaning": "Rake nuts/bark.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Leaf spot: Anthracnose (Rake leaves).\nBeetles: Hickory bark beetle (Maintain health).\nGalls: Phylloxera (Cosmetic).",
      "warning_note": "Falling nuts can dent cars.",
    },
  },
  {
    "name": "Pecan",
    "scientific": "Carya illinoinensis",
    "description": "Southern nut tree; large and spreading.",
    "image":
        "https://images.unsplash.com/photo-1502082553048-f009c37129b9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "Dry poor soil.",
      "water_step1": "High water need.",
      "water_step2": "Irrigate for nuts.",
      "water_step3": "Zinc needed.",
      "water_frequency": "Weekly.",
      "soil_type": "Deep, fertile, moist.",
      "pot_type": "Orchard/Landscape.",
      "maintenance_cleaning": "Rake nuts.",
      "maintenance_support": "Zinc sprays.",
      "maintenance_pruning": "Cross branching.",
      "troubleshooting":
          "Black spots on nuts: Scab (Fungicide/Resistant varieties).\nWebworms: Caterpillars (Control).\nYellow leaves: Zinc deficiency (Spray zinc).",
      "warning_note": "Scab disease is major issue.",
    },
  },
  {
    "name": "Bitternut Hickory",
    "scientific": "Carya cordiformis",
    "description": "Sulfur-yellow buds; bitter nuts.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Dry ridges.",
      "water_step1": "Moist soil.",
      "water_step2": "Water to establish.",
      "water_step3": "Adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist.",
      "pot_type": "Landscape tree.",
      "maintenance_cleaning": "Rake nuts.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Canker: Bark fungus (Prune).\nLeaf spot: Fungus (Rake).\nBeetles: Bark beetles (Maintain health).",
      "warning_note": "Nuts are inedible (bitter).",
    },
  },
  {
    "name": "Yellow Buckeye",
    "scientific": "Aesculus flava",
    "description": "Palm-like compound leaves; yellow flowers.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Dry hot spots.",
      "water_step1": "Keep moist.",
      "water_step2": "Water during drought.",
      "water_step3": "Mulch root zone.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, moist.",
      "pot_type": "Large shade tree.",
      "maintenance_cleaning": "Rake fruit/leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Brown leaves: Leaf blotch (Cosmetic/Rake).\nScorch: Drought (Water).\nScale: Insects (Oil spray).",
      "warning_note": "Seeds (buckeyes) are toxic.",
    },
  },
  {
    "name": "Ohio Buckeye",
    "scientific": "Aesculus glabra",
    "description": "State tree of Ohio; brilliant orange fall color.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Dry conditions.",
      "water_step1": "Keep moist.",
      "water_step2": "Lose leaves early if dry.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, deep, well-drained.",
      "pot_type": "Landscape tree.",
      "maintenance_cleaning": "Rake fruit.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Early defoliation: Leaf scorch (Water/Shade).\nBlotch: Fungus (Cosmetic).\nMildew: White dust (Airflow).",
      "warning_note": "Toxic fruit; early leaf drop common.",
    },
  },
  {
    "name": "Horse Chestnut",
    "scientific": "Aesculus hippocastanum",
    "description": "Showy white flower spikes; palm-like leaves.",
    "image":
        "https://images.unsplash.com/photo-1587588354456-ae2d9972c471?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Hot dry areas.",
      "water_step1": "Keep moist.",
      "water_step2": "Water deeply.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, moist, well-drained.",
      "pot_type": "Ornamental shade.",
      "maintenance_cleaning": "Rake prickly fruit.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Minimal.",
      "troubleshooting":
          "Brown blotches: Leaf blotch (Fungicide/Rake).\nScorch: Heat stress (Water).\nDefoliation: Japanese beetle (Control).",
      "warning_note": "Fruit is toxic; not edible chestnut.",
    },
  },
  {
    "name": "Ginkgo",
    "scientific": "Ginkgo biloba",
    "description":
        "Living fossil with fan-shaped leaves; bright yellow fall color.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Trees",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Intolerant of shade.",
      "light_avoid": "None (very tolerant).",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant mature.",
      "water_step3": "Tolerates pollution.",
      "water_frequency": "Weekly (young).",
      "soil_type": "Any well-drained soil.",
      "pot_type": "Street tree.",
      "maintenance_cleaning": "Rake leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune awkward branches.",
      "troubleshooting":
          "Slow growth: Normal (Be patient).\nSmelly fruit: Female trees (Plant male 'Autumn Gold').\nLeaf scorch: Transplant shock (Water).",
      "warning_note": "Female fruit smells rancid.",
    },
  },

  {
    "name": "Rose",
    "scientific": "Rosa",
    "description":
        "The classic garden flower; available in thousands of varieties.",
    "image":
        "https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (at least 6 hours).",
      "light_low": "Blooms poorly in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water deeply at base.",
      "water_step2": "Avoid wetting foliage.",
      "water_step3": "Mulch to retain moisture.",
      "water_frequency": "Twice weekly.",
      "soil_type": "Rich, well-drained loam.",
      "pot_type": "Garden/Large pot.",
      "maintenance_cleaning": "Remove blackspot leaves.",
      "maintenance_support": "Prune crossing canes.",
      "maintenance_pruning": "Structural pruning in spring.",
      "troubleshooting":
          "Black spots: Black spot fungus (Fungicide/Hygiene).\nPowdery mildew: White dust (Airflow).\nAphids: Green bugs on buds (Wash off).",
      "warning_note": "Thorns can cause injury.",
    },
  },
  {
    "name": "Tulip",
    "scientific": "Tulipa",
    "description": "Bright spring-blooming bulbs in every color.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "Hot afternoon sun (fades blooms).",
      "water_step1": "Water after planting bulbs.",
      "water_step2": "Keep moist during growth.",
      "water_step3": "Dry during summer dormancy.",
      "water_frequency": "Weekly in spring.",
      "soil_type": "Sandy, well-drained.",
      "pot_type": "Pots or beds.",
      "maintenance_cleaning": "Deadhead spent flowers.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut foliage ONLY after it yellows.",
      "troubleshooting":
          "No blooms: Bulb rot/Eaten (Good drainage/Protect).\nStreaked petals: Tulip breaking virus (Destroy bulb).\nHoles in leaves: Slugs (Bait/Trap).",
      "warning_note": "Toxic to pets (bulb is worst).",
    },
  },
  {
    "name": "Sunflower",
    "scientific": "Helianthus annuus",
    "description": "Towering annuals with massive yellow heads.",
    "image":
        "https://images.unsplash.com/photo-1597848212624-a19eb35a2651?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (6-8+ hours).",
      "light_low": "Will get leggy and fall over.",
      "light_avoid": "Shade.",
      "water_step1": "Keep moist seedlings.",
      "water_step2": "Deep watering for roots.",
      "water_step3": "Drought tolerant once big.",
      "water_frequency": "Weekly.",
      "soil_type": "Loose, nutrient-rich.",
      "pot_type": "Large pot or ground.",
      "maintenance_cleaning": "Remove dead leaves.",
      "maintenance_support": "Stake tall varieties.",
      "maintenance_pruning": "None (cut for bouquets).",
      "troubleshooting":
          "Toppling: Wind/Weight (Stake).\nHoles in leaves: Caterpillars (Pick off).\nWhite dust: Powdery mildew (Airflow).",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Lavender",
    "scientific": "Lavandula",
    "description": "Fragrant purple spikes; silvery foliage.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Grows leggy and weak.",
      "light_avoid": "Wet shade.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water deeply.",
      "water_step3": "Avoid wet feet.",
      "water_frequency": "Every 2 weeks.",
      "soil_type": "Sandy, poor, alkaline.",
      "pot_type": "Terracotta (breathing).",
      "maintenance_cleaning": "Deadhead spent blooms.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune lightly after bloom.",
      "troubleshooting":
          "Root rot: Wet soil (Improve drainage).\nLeggy: Low light (Move to sun).\nFew flowers: Too fertile soil (Stop feeding).",
      "warning_note": "Toxic to dogs/cats if eaten.",
    },
  },
  {
    "name": "Peony",
    "scientific": "Paeonia",
    "description": "Lush, fragrant blooms; long-lived perennial.",
    "image":
        "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Few blooms in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Deep watering.",
      "water_step2": "Keep base dry.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Deep, fertile, humus-rich.",
      "pot_type": "Large tub or ground.",
      "maintenance_cleaning": "Clean up fall foliage.",
      "maintenance_support": "Ring support for heavy blooms.",
      "maintenance_pruning": "Cut to ground in fall.",
      "troubleshooting":
          "Ants on buds: Normal (Do not spray).\nBud blast: Gray mold (Fungicide/Sanitation).\nNo blooms: Planted too deep (Replant higher).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Daffodil",
    "scientific": "Narcissus",
    "description": "Cheerful yellow trumpets; deer resistant.",
    "image":
        "https://images.unsplash.com/photo-1516528387618-afa90b13e000?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Complete dark.",
      "water_step1": "Water in spring growth.",
      "water_step2": "Keep moist.",
      "water_step3": "Dry in summer.",
      "water_frequency": "Weekly.",
      "soil_type": "Well-drained.",
      "pot_type": "Pots or ground.",
      "maintenance_cleaning": "Deadhead flowers.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Leave leaves until yellow.",
      "troubleshooting":
          "No blooms: Overcrowded (Divide bulbs).\nRot: Wet soil (Improve drainage).\nYellow streaks: Virus (Destroy).",
      "warning_note": "Toxic to pets (bulb especially).",
    },
  },
  {
    "name": "Marigold",
    "scientific": "Tagetes",
    "description": "Vibrant orange/yellow annuals; pest deterrent.",
    "image":
        "https://images.unsplash.com/photo-1563241527-30058e57833d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Poor blooming.",
      "light_avoid": "Shade.",
      "water_step1": "Allow surface to dry.",
      "water_step2": "Water at base.",
      "water_step3": "Avoid splashing leaves.",
      "water_frequency": "Weekly.",
      "soil_type": "General garden soil.",
      "pot_type": "Pots or borders.",
      "maintenance_cleaning": "Deadhead for more blooms.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Pinch back young plants.",
      "troubleshooting":
          "Gray mold: Wet/Crowded (Airflow).\nMites: Hot/Dry (Daily misting).\nSlugs: Holes (Bait).",
      "warning_note": "Mildly toxic to pets.",
    },
  },
  {
    "name": "Hydrangea",
    "scientific": "Hydrangea macrophylla",
    "description": "Large flower heads; color changes with soil pH.",
    "image":
        "https://images.unsplash.com/photo-1507746562215-2a297732a31c?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Morning sun, afternoon shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Hot afternoon sun.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Wilts easily.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "2-3 times a week.",
      "soil_type": "Rich, moist, loam.",
      "pot_type": "Large pot or shrub border.",
      "maintenance_cleaning": "Remove dead heads.",
      "maintenance_support": "Stake heavy blooms.",
      "maintenance_pruning": "Prune after flowering.",
      "troubleshooting":
          "Wilting: Heat/Thirsty (Water immediately).\nNo blooms: Pruned wrong time (Check variety).\nYellow leaves: Iron deficiency (Acidify).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Azalea",
    "scientific": "Rhododendron",
    "description": "Prolific spring bloomer; evergreen or deciduous.",
    "image":
        "https://images.unsplash.com/photo-1558293842-c0fd3db84100?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Dappled shade.",
      "light_low": "Good for shade.",
      "light_avoid": "Full hot sun.",
      "water_step1": "Keep moist.",
      "water_step2": "Shallow roots dry fast.",
      "water_step3": "Acidic water best.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, organic, well-drained.",
      "pot_type": "Pot or shrub bed.",
      "maintenance_cleaning": "Mulch annually.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune immediately after bloom.",
      "troubleshooting":
          "Yellow leaves: Alkaline soil (Use sulfur).\nLace bug: Stippled leaves (Insecticidal soap).\nPetal blight: Mushy flowers (Cleanup).",
      "warning_note": "Highly toxic to pets (Grayanotoxin).",
    },
  },
  {
    "name": "Begonia",
    "scientific": "Begonia",
    "description": "Shade-loving annual with fleshy leaves.",
    "image":
        "https://images.unsplash.com/photo-1444908316712-4277b0c538a7?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Partial shade to full shade.",
      "light_low": "Thrives in shade.",
      "light_avoid": "Direct sun (burns).",
      "water_step1": "Keep soil slightly moist.",
      "water_step2": "Water at base.",
      "water_step3": "Prevent rot.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained.",
      "pot_type": "Hanging baskets/Pots.",
      "maintenance_cleaning": "Deadhead blooms.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Pinch back leggy stems.",
      "troubleshooting":
          "Rot: Wet soil/Leaves (Water carefully).\nPowdery mildew: Stagnant air (Airflow).\nLeggy: Too dark (More indirect light).",
      "warning_note": "Toxic to pets (tubers worst).",
    },
  },
  {
    "name": "Chrysanthemum",
    "scientific": "Chrysanthemum",
    "description": "Classic fall flower; 'Mums'.",
    "image":
        "https://images.unsplash.com/photo-1569352123689-130198031d24?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Leggy in shade.",
      "light_avoid": "Streetlights (delay bloom).",
      "water_step1": "Keep evenly moist.",
      "water_step2": "Water frequently in pots.",
      "water_step3": "Good drainage.",
      "water_frequency": "2-3 times weekly.",
      "soil_type": "Fertile, loam.",
      "pot_type": "Pots or beds.",
      "maintenance_cleaning": "Remove dead blooms.",
      "maintenance_support": "Stake tall types.",
      "maintenance_pruning": "Pinch until July for bushiness.",
      "troubleshooting":
          "Leggy plants: Late pinching (Pinch early summer).\nAphs: Under leaves (Wash).\nRot: Wet feet (Drainage).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Dahlia",
    "scientific": "Dahlia pinnata",
    "description": "Showy, complex blooms from tubers.",
    "image":
        "https://images.unsplash.com/photo-1563241527-30058e57833d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Poor flowering.",
      "light_avoid": "Windy spots.",
      "water_step1": "Keep moist once growing.",
      "water_step2": "Do not water dormant tuber.",
      "water_step3": "Mulch.",
      "water_frequency": "2-3 times weekly.",
      "soil_type": "Rich, sandy loam.",
      "pot_type": "Large pot/Ground.",
      "maintenance_cleaning": "Deadhead.",
      "maintenance_support": "Stake immediately.",
      "maintenance_pruning": "Disbud for huge flowers.",
      "troubleshooting":
          "Earwigs: Petal damage (Trap).\nRot: Wet cold soil (Wait to plant).\nShort plants: Lack of sun (Move).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Daisy",
    "scientific": "Leucanthemum x superbum",
    "description": "Cheery white petals with yellow center.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "Wet shade.",
      "water_step1": "Water when dry.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Avoid soggy soil.",
      "water_frequency": "Weekly.",
      "soil_type": "Average garden soil.",
      "pot_type": "Beds or pots.",
      "maintenance_cleaning": "Deadhead old flowers.",
      "maintenance_support": "Stake tall types.",
      "maintenance_pruning": "Cut back after bloom.",
      "troubleshooting":
          "Flopping: Too rich soil/Shade (Support).\nLeaf miner: Tunnels (Remove leaves).\nRot: Wet winter soil (Improve drainage).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Geranium",
    "scientific": "Pelargonium",
    "description": "Popular container plant; red/pink/white blooms.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Leggy in shade.",
      "light_avoid": "Heat stress in FL.",
      "water_step1": "Allow soil to dry.",
      "water_step2": "Water thoroughly.",
      "water_step3": "Deadhead.",
      "water_frequency": "Weekly.",
      "soil_type": "Well-drained potting mix.",
      "pot_type": "Pots/Hanging baskets.",
      "maintenance_cleaning": "Remove dead flowers.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Pinch for bushiness.",
      "troubleshooting":
          "Yellow lower leaves: Dry/Nitrogen lack (Feed/Water).\nBotrytis: Gray mold on leaves (Remove/Dry air).\nNo blooms: Low light (Move).",
      "warning_note": "Toxic to pets.",
    },
  },
  {
    "name": "Iris",
    "scientific": "Iris",
    "description": "Elegant blooms; 'Bearded' types common.",
    "image":
        "https://images.unsplash.com/photo-1596547610057-0a25691bcbed?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Shade (won't bloom).",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant (Rhizomes).",
      "water_step3": "Do not overwater.",
      "water_frequency": "Weekly.",
      "soil_type": "Well-drained.",
      "pot_type": "Garden beds.",
      "maintenance_cleaning": "Remove fall debris.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back leaves in fall.",
      "troubleshooting":
          "Borers: Holes in rhizome (Remove/Destroy).\nSoft rot: Smelly mush (Cut out rot/Dry).\nLeaf spot: Fungus (Remove leaves).",
      "warning_note": "Rhizomes toxic to pets.",
    },
  },
  {
    "name": "Lilac",
    "scientific": "Syringa vulgaris",
    "description": "Heavenly scented purple/white spring trusses.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (6+ hours).",
      "light_low": "Powdery mildew in shade.",
      "light_avoid": "Shade.",
      "water_step1": "Keep moist.",
      "water_step2": "Water in summer.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Neutral to alkaline loam.",
      "pot_type": "Large shrub border.",
      "maintenance_cleaning": "Deadhead for looks.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune immediately after bloom.",
      "troubleshooting":
          "White powder: Mildew (Airflow/Fungicide).\nScale: Oyster shell scale (Oil).\nNo blooms: Pruned late/Too shady (Correct pruning).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Lily",
    "scientific": "Lilium",
    "description": "Showy, trumpet-shaped flowers; often fragrant.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (head) / Shade (feet).",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Hot dry soil.",
      "water_step1": "Keep moist.",
      "water_step2": "Good drainage essential.",
      "water_step3": "Mulch roots cool.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained.",
      "pot_type": "Pots or borders.",
      "maintenance_cleaning": "Remove dead blooms.",
      "maintenance_support": "Stake tall stems.",
      "maintenance_pruning": "Leave stems until yellow.",
      "troubleshooting":
          "Red beetles: Lily leaf beetle (Pick off/Spray).\nBotrytis: Spots (Fungicide).\nVirus: Streaking (Destroy bulb).",
      "warning_note": "FATAL to cats (kidney failure).",
    },
  },
  {
    "name": "Pansy",
    "scientific": "Viola tricolor var. hortensis",
    "description": "Cool-weather favorite; 'faces' on petals.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Leggy in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Keep soil moist.",
      "water_step2": "Water frequently.",
      "water_step3": "Cooler is better.",
      "water_frequency": "2-3 times weekly.",
      "soil_type": "Humus-rich, moist.",
      "pot_type": "Pots/Bedding.",
      "maintenance_cleaning": "Deadhead often.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim leggy stems.",
      "troubleshooting":
          "Yellowing: Root rot (Drainage).\nSlugs: Holes (Bait).\nDowny mildew: Gray fuzz (Fungicide).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Petunia",
    "scientific": "Petunia",
    "description": "Prolific bloomer; cascading or mounding.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Few blooms in shade.",
      "light_avoid": "Wet shade.",
      "water_step1": "Water when dry.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Fertilize often.",
      "water_frequency": "Weekly.",
      "soil_type": "Light, well-drained.",
      "pot_type": "Hanging baskets/Pots.",
      "maintenance_cleaning": "Deadhead (unless self-cleaning).",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back mid-summer.",
      "troubleshooting":
          "Leggy: Low light (Sun/Trim).\nSticky leaves: Aphids/Normal (Check pests).\nYellowing: Iron deficiency (Feed).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Snapdragon",
    "scientific": "Antirrhinum majus",
    "description": "Vertical spikes of 'snapping' flowers.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Partial shade okay.",
      "light_avoid": "Heat stress.",
      "water_step1": "Keep moist near surface.",
      "water_step2": "Water at base.",
      "water_step3": "Avoid overhead water.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained.",
      "pot_type": "Beds/Pots.",
      "maintenance_cleaning": "Deadhead for rebloom.",
      "maintenance_support": "Stake tall types.",
      "maintenance_pruning": "None.",
      "troubleshooting":
          "Rust: Brown spots under leaves (Fungicide).\nWilt: Root rot (Drainage).\nMildew: White dust (Airflow).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Zinnia",
    "scientific": "Zinnia elegans",
    "description": "Easy butterflies magnet; bright colors.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Disease prone in shade.",
      "light_avoid": "Crowding.",
      "water_step1": "Water at base.",
      "water_step2": "Keep leaves dry.",
      "water_step3": "Drought tolerant.",
      "water_frequency": "Weekly.",
      "soil_type": "Well-drained.",
      "pot_type": "Beds/Pots.",
      "maintenance_cleaning": "Deadhead.",
      "maintenance_support": "Support tall stems.",
      "maintenance_pruning": "Pinch young plants.",
      "troubleshooting":
          "Powdery mildew: White leaves #1 foe (Airflow/Fungicide).\nSpots: Bacterial spot (Remove).\nHoles: Japanese beetles (Pick off).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Foxglove",
    "scientific": "Digitalis purpurea",
    "description": "Tall, majestic spikes of bell flowers.",
    "image":
        "https://images.unsplash.com/photo-1463936575829-25148e1db1b8?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Partial shade.",
      "light_low": "Tolerates shade.",
      "light_avoid": "Hot afternoon sun.",
      "water_step1": "Keep moist.",
      "water_step2": "Do not let dry out.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, moist.",
      "pot_type": "Back of border.",
      "maintenance_cleaning": "Remove spreaders.",
      "maintenance_support": "Stake spikes.",
      "maintenance_pruning": "Cut main spike for side shoots.",
      "troubleshooting":
          "Crown rot: Wet soil (Drainage).\nLeaf spot: Fungus (Rake leaves).\nAphids: Clustered on stem (Spray).",
      "warning_note": "FATAL if ingested (Heart failure).",
    },
  },
  {
    "name": "Coneflower",
    "scientific": "Echinacea purpurea",
    "description": "Native purple daisy; medicinal history.",
    "image":
        "https://images.unsplash.com/photo-1459156212016-c812468e2115?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "Wet sticky soil.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Do not fertilizer heavily.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor/Average, well-drained.",
      "pot_type": "Beds.",
      "maintenance_cleaning": "Leave seeds for birds.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Deadhead if no seeds wanted.",
      "troubleshooting":
          "Aster yellows: Green/distorted flowers (Remove plant - Viral).\nRot: Wet winter (Drainage).\nSpots: Fungal leaf spot (Cosmetic).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Black-Eyed Susan",
    "scientific": "Rudbeckia hirta",
    "description": "Golden petals with dark center; tough native.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Tolerates light shade.",
      "light_avoid": "Shade (floppy).",
      "water_step1": "Moderate water.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Prevent mildew.",
      "water_frequency": "Weekly.",
      "soil_type": "Clay or Loam.",
      "pot_type": "Beds.",
      "maintenance_cleaning": "Deadhead for looks.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back in fall.",
      "troubleshooting":
          "Powdery mildew: White dust (Resistant varieties).\nLeaf spot: Black spots (Remove leaves).\nWilting: Drought (Water).",
      "warning_note": "Mildly toxic to cats/cattle.",
    },
  },
  {
    "name": "Bleeding Heart",
    "scientific": "Lamprocapnos spectabilis",
    "description": "Shade lover; heart-shaped pink flowers.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Partial to full shade.",
      "light_low": "Great for shade.",
      "light_avoid": "Summer sun/Heat.",
      "water_step1": "Keep moist.",
      "water_step2": "Goes dormant in summer heat.",
      "water_step3": "Mark location.",
      "water_frequency": "Weekly till dormancy.",
      "soil_type": "Humus-rich, moist.",
      "pot_type": "Shade garden.",
      "maintenance_cleaning": "Remove yellow foliage.",
      "maintenance_support": "None.",
      "maintenance_pruning": "None.",
      "troubleshooting":
          "Yellowing often: Summer dormancy (Normal).\nNo blooms: Too much nitrogen (Stop bio-stimulants).\nSlug damage: Holes (Bait).",
      "warning_note": "Toxic to dogs/cats.",
    },
  },

  {
    "name": "Hibiscus",
    "scientific": "Hibiscus rosa-sinensis",
    "description": "Tropical shrub with large, showy, trumpet-shaped flowers.",
    "image":
        "https://images.unsplash.com/photo-1559869680-a61b8f1c305a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun.",
      "light_low": "Will not bloom in shade.",
      "light_avoid": "Cold drafts/Frost.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Water daily in summer heat.",
      "water_step3": "Reduce water in winter.",
      "water_frequency": "Daily or every other day.",
      "soil_type": "Rich, well-drained, slightly acidic.",
      "pot_type": "Large pot.",
      "maintenance_cleaning": "Remove yellow leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune back in spring.",
      "troubleshooting":
          "Bud drop: Temperature fluctuations/Dry (Stable/Water).\nYellow leaves: Overwatering/Nutrient lack (Check soil).\nAphids: New growth (Soap spray).",
      "warning_note": "Pollens can stain.",
    },
  },
  {
    "name": "Bougainvillea",
    "scientific": "Bougainvillea",
    "description": "Vibrant, thorny vine with papery flower bracts.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Bougainvillea craves full sun and heat. At least 6 hours of direct sunlight is needed for good blooming. If you want an explosion of color, give it the brightest spot you have.",
      "light_low":
          "In shade, the plant will grow green and leafy but will produce few or no flowers. It may also become leggy as it stretches for light.",
      "light_avoid":
          "Avoid frost and freezing temperatures. It is a tropical plant and will die if exposed to prolonged cold.",
      "water_step1":
          "Allow the soil to dry out significantly between waterings. Bougainvillea blooms better when it's slightly stressed for water.",
      "water_step2":
          "When you do water, soak it thoroughly until water runs out the drainage holes.",
      "water_step3":
          "Reduce watering in winter or when the plant is not actively blooming to prevent root rot.",
      "water_frequency":
          "Water deeply once a week, but adjust based on heat. If it wilts slightly, it's time to water.",
      "soil_type":
          "Use a well-draining, slightly acidic soil. A mix of potting soil with added perlite or sand works well.",
      "pot_type":
          "They flower best when pot-bound, so don't rush to repot into a huge container. Terracotta is good for drainage.",
      "maintenance_cleaning":
          "Sweep up fallen bracts (the colorful 'petals') regularly, as they can be messy.",
      "maintenance_support":
          "It's a vine that needs support. Train it onto a trellis, fence, or wall using soft ties.",
      "maintenance_pruning":
          "Prune heavily after a flowering cycle to encourage new growth, which is where the next blooms will appear.",
      "troubleshooting":
          "No blooms: Usually due to not enough sun or too much water/nitrogen fertilizer. Neglect it a little!\nYellow leaves: Often a sign of root rot from overwatering or poor drainage.\nCaterpillars: 'Bougainvillea Looper' caterpillars can eat leaves at night. Hand pick or use organic sprays.",
      "warning_note":
          "Watch out for sharp thorns hidden under the leaves. The sap can also be mildly irritating.",
    },
  },
  {
    "name": "Camellia",
    "scientific": "Camellia japonica",
    "description":
        "Elegant winter/spring bloomer with glossy evergreen leaves.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Camellias prefer partial shade or dappled sunlight. Morning sun with protection from hot afternoon rays is ideal.",
      "light_low":
          "They can tolerate deep shade, but flowering will be significantly reduced.",
      "light_avoid":
          "Avoid direct, hot afternoon sun which burns leaves, and early morning sun after a freeze which can brown the buds.",
      "water_step1":
          "Keep the soil consistently moist but not soggy. Do not let the root ball dry out completely.",
      "water_step2":
          "Water requires particular attention when flower buds are forming in late summer.",
      "water_step3":
          "Mulch heavily (2-3 inches) to keep roots cool and retain moisture.",
      "water_frequency":
          "Water weekly, more often during dry spells or if in a pot.",
      "soil_type":
          "Must have acidic, well-draining soil rich in organic matter. Use fertilizer for acid-loving plants.",
      "pot_type":
          "Large tubs or pots are fine, provided the drainage is excellent.",
      "maintenance_cleaning":
          "Pick up fallen petals promptly to prevent 'petal blight', a fungal disease.",
      "maintenance_support":
          "No support needed, but shelter from strong winds is beneficial.",
      "maintenance_pruning":
          "Prune immediately after blooming finishes. Pruning later in the year removes the next season's buds.",
      "troubleshooting":
          "Bud drop: Caused by inconsistent watering (too dry or too wet) or sudden temperature swings.\nScale: Shell-like bumps on undersides of leaves. Treat with horticultural oil.\nYellow leaves: Soil is not acidic enough (chlorosis). Apply sulfur or acidic fertilizer.",
      "warning_note":
          "Petal blight fungus can persist in soil, so hygiene is key. Clean up debris.",
    },
  },
  {
    "name": "Gardenia",
    "scientific": "Gardenia jasminoides",
    "description": "Intoxicatingly fragrant white flowers; glossy leaves.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Morning sun and afternoon shade is perfect. They love bright light but cannot handle bubbling heat.",
      "light_low": "Insufficient light causes leggy growth and no flowers.",
      "light_avoid":
          "Hot, direct midday sun will scorch the leaves and cause buds to drop.",
      "water_step1":
          "Gardenias need consistently moist soil. Never let them dry out completely.",
      "water_step2":
          "Use room-temperature water if possible; cold water can shock them.",
      "water_step3":
          "They love humidity. Mist partially, or use a pebble tray, but don't wet the flowers directly.",
      "water_frequency":
          "Water weekly, ensuring deep hydration. Check pots daily in warm weather.",
      "soil_type":
          "Acidic soil (pH 5.0-6.0) is non-negotiable. It must be rich and well-drained.",
      "pot_type":
          "They enjoy being slightly cozy in their pots but need good drainage.",
      "maintenance_cleaning":
          "Remove brown or faded flowers to keep the plant looking fresh.",
      "maintenance_support":
          "None required, though they can be trained into tree forms (standards).",
      "maintenance_pruning":
          "Prune to shape after the main flush of flowering ceases.",
      "troubleshooting":
          "Bud drop: This is the classic Gardenia complaint. Caused by moving the pot, temperature fluctuations, or low humidity.\nYellow leaves: Usually iron deficiency due to alkaline soil (Chlorosis).\nMealybugs: Look for white cottony masses. Dab with alcohol.",
      "warning_note":
          "Mildly toxic to pets if large amounts are ingested. Can cause vomiting.",
    },
  },
  {
    "name": "Fuchsia",
    "scientific": "Fuchsia",
    "description": "Exotic drooping 'ballerina' flowers; loves shade.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Fuchsias love cool, partial shade. They are perfect for shady porches or north-facing sides.",
      "light_low":
          "They thrive in shade, though very deep darkness will reduce flowering.",
      "light_avoid":
          "Direct hot sun and high heat. They will wilt dramatically if growing in a hot spot.",
      "water_step1":
          "Keep the soil moist at all times. They have shallow roots and dry out fast.",
      "water_step2":
          "In hot weather (over 80°F), you may need to water hanging baskets twice a day.",
      "water_step3": "Mist the foliage on hot days to cool the plant down.",
      "water_frequency":
          "Daily watering is often needed for baskets in summer.",
      "soil_type": "Rich, moisture-retentive potting mix with good drainage.",
      "pot_type":
          "Hanging baskets or elevated pots where the flowers can droop down beautifully.",
      "maintenance_cleaning":
          "Regularly pinch off the berries (seed pods) after flowers drop to keep blooms coming.",
      "maintenance_support": "None, they are natural trailers.",
      "maintenance_pruning":
          "Pinch the growing tips of young plants to encourage bushiness.",
      "troubleshooting":
          "Wilting: Often heat stress, not just water. If soil is wet but plant droops, move to a cooler spot.\nWhitefly: Tiny white flies under leaves are a common pest. Use yellow sticky traps.\nBotrytis: Gray mold can form if air circulation is poor.",
      "warning_note":
          "The berries are technically edible but tasteless. Non-toxic to pets.",
    },
  },
  {
    "name": "Impatiens",
    "scientific": "Impatiens walleriana",
    "description": "Colorful bedding plant for shade; 'Busy Lizzie'.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Standard Impatiens love the shade. They add color where other flowers fail.",
      "light_low":
          "They are excellent for deep shade, under trees, or on covered porches.",
      "light_avoid":
          "Direct sun will wilt them immediately (unless you plant New Guinea Impatiens, which tolerate some sun).",
      "water_step1": "Keep soil consistently moist. They are water-lovers.",
      "water_step2":
          "Water at the base to keep foliage dry and prevent mildew.",
      "water_step3":
          "If they wilt from dryness, water immediately; they usually bounce back.",
      "water_frequency":
          "Check daily. Water whenever the top half-inch of soil feels dry.",
      "soil_type": "Moist, humus-rich soil. Standard potting mix works well.",
      "pot_type": "Great in beds, pots, window boxes, and hanging baskets.",
      "maintenance_cleaning":
          "They are 'self-cleaning', meaning old flowers fall off cleanly. No deadheading needed!",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "If they get leggy and tall, pinch the tops back to force side growth.",
      "troubleshooting":
          "Downy Mildew: A serious disease causing leaves to drop. Look for resistant varieties like 'Beacon'.\nWilting: Sign of thirst. Water quickly.\nRot: Occurs in soggy soil; enhance drainage.",
      "warning_note": "Non-toxic and safe for pets.",
    },
  },
  {
    "name": "Lantana",
    "scientific": "Lantana camara",
    "description": "Tough, heat-loving shrub; multi-colored flower clusters.",
    "image":
        "https://images.unsplash.com/photo-1563241527-30058e57833d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Lantana is a sun-worshipper. Give it full, baking sun for the best blooms.",
      "light_low":
          "In shade, it is susceptible to powdery mildew and blooms poorly.",
      "light_avoid": "Shade and cool, damp locations.",
      "water_step1": "Water thoroughly to establish young plants.",
      "water_step2":
          "Once established, it is incredibly drought tolerant and tough.",
      "water_step3": "Do not overwater; it prefers to stay on the drier side.",
      "water_frequency":
          "Weekly is sufficient; less if in the ground and established.",
      "soil_type":
          "Does well in poor, sandy, or rocky soil. Too much fertilizer reduces blooming.",
      "pot_type": "Excellent for pots, hanging baskets, or as a ground cover.",
      "maintenance_cleaning":
          "Deadheading (removing spent blooms) encourages a new flush of flowers.",
      "maintenance_support": "None needed.",
      "maintenance_pruning":
          "If it gets woody or too large, cut it back hard. It regrows vigorously.",
      "troubleshooting":
          "Powdery Mildew: White dust on leaves. Caused by shade or humidity. Move to full sun.\nSooty Mold: Black sticky residue? Check for aphids or whiteflies and wash them off.\nNo blooms: Likely too much water or fertilizer.",
      "warning_note":
          "The leaves can irritate skin, and the unripe berries are toxic.",
    },
  },
  {
    "name": "Morning Glory",
    "scientific": "Ipomoea",
    "description": "Fast-growing vine; trumpet flowers open in morning.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun is crucial since the flowers open only in the sun (morning).",
      "light_low": "Will produce lush vines but disappointingly few flowers.",
      "light_avoid": "Full shade.",
      "water_step1": "Keep soil moderately moist.",
      "water_step2": "They can tolerate dry spells well once established.",
      "water_step3": "Mulch the base to keep roots consistent.",
      "water_frequency": "Weekly watering is usually sufficient.",
      "soil_type":
          "They prefer poor to average soil. Rich soil gives you leaves, not flowers!",
      "pot_type": "Planters or ground, always near a trellis or fence.",
      "maintenance_cleaning":
          "Remove seed pods if you don't want it to self-seed aggressively.",
      "maintenance_support":
          "It is a twining vine and needs something thin (like string, wire, or netting) to grab onto.",
      "maintenance_pruning": "Prune to control spread. It grows very fast.",
      "troubleshooting":
          "Yellow leaves: Often spider mites. Spray with water to dislodge them.\nNo blooms: Soil is too fertile/rich. Stop fertilizing.\nInvasive: Can take over if seeds drop. Deadhead meticulously.",
      "warning_note":
          "The seeds are toxic if ingested (can be hallucinogenic). Keep away from pets/kids.",
    },
  },
  {
    "name": "Nasturtium",
    "scientific": "Tropaeolum",
    "description": "Edible peppery flowers and lily-pad leaves.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (6+ hours) for best flowering.",
      "light_low":
          "In partial shade, leaves develop well (and get larger), but flowers are fewer.",
      "light_avoid": "Overly fertile soil conditions.",
      "water_step1": "Keep regular moisture for best appearance.",
      "water_step2":
          "They are somewhat drought tolerant due to their succulence.",
      "water_step3": "Nasturtiums thrive on neglect.",
      "water_frequency": "Weekly watering is fine.",
      "soil_type":
          "Poor, sandy soil is best. Fertile soil produces all leaf and no flower.",
      "pot_type": "Great in window boxes, raised beds, or salad planters.",
      "maintenance_cleaning":
          "Pick off yellowing leaves to keep the patch tidy.",
      "maintenance_support":
          "Trailing varieties can climb a trellis; bush varieties mound.",
      "maintenance_pruning": "Trim long trails if they get in the way.",
      "troubleshooting":
          "Aphids: Black aphids love Nasturtiums. Use a strong blast of water to remove them.\nNo blooms: You are being too nice! Stop feeding and watering so much.\nRot: Soil is too wet or shady.",
      "warning_note":
          "Completely edible! Flowers and leaves add a peppery kick to salads.",
    },
  },
  {
    "name": "Phlox",
    "scientific": "Phlox paniculata",
    "description": "Tall garden phlox; fragrant summer clusters.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun ensures prolific blooms and healthy foliage.",
      "light_low":
          "Can tolerate light shade, but creates a higher risk of fungal disease.",
      "light_avoid": "Crowded, stagnant air locations.",
      "water_step1":
          "Keep the soil consistently moist, especially during summer heat.",
      "water_step2":
          "Water at the base of the plant only. Wet leaves invite mildew.",
      "water_step3": "Mulch around the base to retain root moisture.",
      "water_frequency": "Water deeply once a week.",
      "soil_type": "Rich, moist, organic soil is preferred.",
      "pot_type": "Best in perennial borders.",
      "maintenance_cleaning":
          "Deadhead spent flower clusters to encourage a second flush of blooms.",
      "maintenance_support":
          "Tall varieties may need staking to prevent flopping.",
      "maintenance_pruning":
          "Thin out stems in spring to improve airflow. Cut back to ground in late fall.",
      "troubleshooting":
          "Powdery Mildew: White dusty coating on leaves. Improve airflow or choose resistant varieties ('David').\nSpider Mites: Speckled leaves in hot dry weather. Spray with soap.\nDeer: They love to eat Phlox buds. Use repellent.",
      "warning_note": "Non-toxic and safe.",
    },
  },
  {
    "name": "Plumeria",
    "scientific": "Plumeria",
    "description": "Frangipani; tropical fragrant lei flower.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun. Plumeria needs intense light (6-8 hours) to produce flowers.",
      "light_low": "Will not bloom in shade and may rot.",
      "light_avoid": "Frost and cold temperatures (below 50°F/10°C).",
      "water_step1":
          "Allow the soil to dry out almost completely between waterings.",
      "water_step2": "They are extremely susceptible to rot from overwatering.",
      "water_step3":
          "In winter dormancy (when leaves drop), stop watering entirely.",
      "water_frequency": "Weekly in summer; rarely to never in winter.",
      "soil_type":
          "Cactus mix or very fast-draining soil with lots of perlite.",
      "pot_type": "Pots are best so they can be moved indoors in winter.",
      "maintenance_cleaning":
          "Pick up dropped leaves to prevent hygiene issues.",
      "maintenance_support":
          "Newly planted cuttings may need a stake until roots anchor them.",
      "maintenance_pruning":
          "Prune for shape in late winter before new growth starts.",
      "troubleshooting":
          "Stem Rot: Squishy stem usually means fatal rot. Cut away the rot until you see healthy white wood, then dry and replant.\nRust: Orange spots on leaf undersides. Use a fungicide.\nNo Leaves: Normal in winter dormancy.",
      "warning_note":
          "The milky white sap is toxic and irritating to skin and eyes. Wash hands after handling.",
    },
  },
  {
    "name": "Poppy",
    "scientific": "Papaver",
    "description": "Papery blooms; ephemeral beauty.",
    "image":
        "https://images.unsplash.com/photo-1597848212624-a19eb35a2651?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. Poppies love a bright, open position.",
      "light_low": "They become leggy and flop over in the shade.",
      "light_avoid": "Soggy soil in winter, which rots the crown.",
      "water_step1": "Water gently to establish seedlings.",
      "water_step2":
          "Once established, tough perennial poppies are drought tolerant.",
      "water_step3": "Good drainage is the most critical factor.",
      "water_frequency": "Weekly during growth; less when dormant in summer.",
      "soil_type": "Average, well-drained, gritty soil.",
      "pot_type":
          "Best in garden beds (taproots make them hard to transplant or pot).",
      "maintenance_cleaning":
          "Deadhead spent flowers if you want reblooming, or leave pods for seeds.",
      "maintenance_support": "Big Oriental Poppies may need ring supports.",
      "maintenance_pruning":
          "When foliage dies back in summer dormancy, leave it or trim it. New leaves appear in fall.",
      "troubleshooting":
          "Rot: Caused by wet soil. Improve drainage or plant on a mound.\nAphids: Black aphids often cover stems. Spray with water or soap.\nFlopping: Heavy rain can knock them down. Shake them off gently.",
      "warning_note": "All parts of the poppy plant are toxic to pets.",
    },
  },
  {
    "name": "Ranunculus",
    "scientific": "Ranunculus asiaticus",
    "description": "Rose-like layers of petals; cool season bulb.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. They need bright light to keep stems sturdy.",
      "light_low": "Tolerates light shade, but blooms may be smaller.",
      "light_avoid":
          "Excessive heat. They are cool-season flowers and fade in hot summer.",
      "water_step1":
          "Keep soil lightly moist while they are actively growing and blooming.",
      "water_step2":
          "Once leaves yelllow and plant goes dormant, stop watering.",
      "water_step3": "Excellent drainage is required to prevent tuber rot.",
      "water_frequency": "Weekly during spring bloom season.",
      "soil_type": "Light, sandy, loam soil.",
      "pot_type": "Excellent in containers or raised cut-flower beds.",
      "maintenance_cleaning": "Deadhead spent blooms to encourage new buds.",
      "maintenance_support": "None usually needed.",
      "maintenance_pruning":
          "Remove foliage only after it has turned yellow and died back naturally.",
      "troubleshooting":
          "Rot: Wet, heavy soil will turn the claw-like tubers to mush. Amend soil with sand.\nYellowing: Natural process in summer heat as they go dormant.\nPowdery Mildew: Ensure good airflow.",
      "warning_note": "Toxic to inquisitive pets if eaten.",
    },
  },
  {
    "name": "Salvia",
    "scientific": "Salvia",
    "description": "Sages; spikes of blue/red flowers; attracts pollinators.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun is best for vigorous blooming and compact growth.",
      "light_low": "In shade, stems become floppy and weak.",
      "light_avoid": "Wet, shady winter conditions.",
      "water_step1": "Water thoroughly until established.",
      "water_step2":
          "Most Salvias are very drought tolerant once their roots are set.",
      "water_step3": "Avoid keeping the soil soggy.",
      "water_frequency": "Every 10-14 days; dependable on rain.",
      "soil_type":
          "Average, well-drained soil. Too much fertilizer leads to leafy, floppy plants.",
      "pot_type": "Great in borders or pots.",
      "maintenance_cleaning":
          "Deadhead spent flower spikes to encourage a repeat bloom in late summer.",
      "maintenance_support": "None usually needed.",
      "maintenance_pruning":
          "Cut back hard (by half) in mid-summer if plants get straggly.",
      "troubleshooting":
          "Flopping: Usually caused by too much shade or too much fertilizer. Cut back and move/starve.\nWhitefly: Tiny white flies on undersides of leaves. Spray with soap.\nRot: Soil doesn't drain well in winter.",
      "warning_note": "Non-toxic to pets. Many (like Sage) are culinary herbs.",
    },
  },
  {
    "name": "Sweet Pea",
    "scientific": "Lathyrus odoratus",
    "description": "Climbing vine with fragrant pea-like flowers.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun is their favorite, but they like their 'feet' (roots) cool and shaded.",
      "light_low": "Shade results in spindly vines and very few flowers.",
      "light_avoid":
          "Hot afternoon baking sun, which scorches the delicate blooms.",
      "water_step1":
          "Keep the soil consistently moist. Sweet Peas hate to dry out.",
      "water_step2":
          "Mulch heavily around the base to keep the soil cool and moist.",
      "water_step3": "Do not let them get soggy, but never let them wilt.",
      "water_frequency":
          "Water 2-3 times a week, especially as temperatures rise.",
      "soil_type": "Rich, deep, alkaline soil with plenty of compost.",
      "pot_type": "Deep pots or grow bags (roots go deep).",
      "maintenance_cleaning":
          "You must pick flowers/deadhead constantly. If they set seed pods, the plant thinks its job is done and dies.",
      "maintenance_support":
          "They need a trellis, netting, or twine to climb. They cling with tendrils.",
      "maintenance_pruning":
          "Pinch the top when seedlings are 6 inches tall to encourage strong side shoots.",
      "troubleshooting":
          "Bud Drop: Usually caused by sudden temperature changes or drying out. Keep them stable.\nMildew: Late in the season, powdery mildew is inevitable. Pull them up when they look bad.\nAphids: They cluster on the soft growing tips. Wash them off.",
      "warning_note":
          "Sweet Pea seeds are toxic if eaten. They are NOT edible peas.",
    },
  },
  {
    "name": "Verbena",
    "scientific": "Verbena",
    "description": "Trailing or upright; tough and colorful.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun (8+ hours). Verbena needs intense light to bloom well.",
      "light_low": "In shade, it stops blooming and powdery mildew takes over.",
      "light_avoid": "Shady, damp spots.",
      "water_step1": "Water thoroughly to establish, then let it dry out.",
      "water_step2": "Very drought tolerant once deep roots are set.",
      "water_step3": "Good drainage is essential; it hates wet feet.",
      "water_frequency": "Weekly is plenty; less if it rains.",
      "soil_type":
          "Average to poor, well-drained soil. Do not fertilize heavily.",
      "pot_type": "Excellent trailer for hanging baskets or ground cover.",
      "maintenance_cleaning":
          "Deadheading isn't strictly necessary but keeps it looking tidy.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "If it gets leggy or stops blooming in mid-summer, trim it back by a quarter to refresh it.",
      "troubleshooting":
          "Powdery Mildew: White dust on leaves. Means it needs more sun and air circulation.\nLeggy: Not enough sun. Move it.\nRot: Soil is staying too wet.",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Vinca",
    "scientific": "Catharanthus roseus",
    "description": "Periwinkle; heat/drought loving bedding plant.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. Vinca loves dry, hot, baking locations.",
      "light_low": "Tolerates partial shade, but flowers will be fewer.",
      "light_avoid": "Cold, wet soil is the enemy.",
      "water_step1": "Allow soil to dry out completely between waterings.",
      "water_step2":
          "Avoid overhead watering which can cause fungal leaf spots.",
      "water_step3": "Extremely drought tolerant once established.",
      "water_frequency": "Water sparingly, perhaps once a week or less.",
      "soil_type": "Sandy, well-drained soil. Does poorly in heavy clay.",
      "pot_type": "Great for bedding or pots in hot spots.",
      "maintenance_cleaning": "Self-cleaning; the flowers drop off cleanly.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Pinch young plants to make them bushier.",
      "troubleshooting":
          "Rot: The #1 killer. If stems turn black and mushy at the base, it's too wet/cold.\nLeaf Curl: Often a response to extreme heat; it usually recovers at night.\nYellowing: Iron deficiency typical in high pH soils.",
      "warning_note": "Toxic to pets if ingested.",
    },
  },
  {
    "name": "Wisteria",
    "scientific": "Wisteria",
    "description": "Vigorous woody vine with cascading purple racemes.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun (6+ hours) contributes to the best flower show.",
      "light_low": "Will not bloom in shade.",
      "light_avoid": "Shady spots.",
      "water_step1": "Water regularly to establish the large root system.",
      "water_step2": "Once established, it is tough and drought tolerant.",
      "water_step3": "Roots grow very deep.",
      "water_frequency": "Weekly deep watering during summer.",
      "soil_type":
          "Average soil, but prefers it not to be too rich in nitrogen (or you get leaves, no flowers).",
      "pot_type": "Needs a sturty pergola or arbor. Too big for most pots.",
      "maintenance_cleaning": "Pruning is key. Prune hard.",
      "maintenance_support":
          "Requires VERY strong support. It can crush flimsy lattices.",
      "maintenance_pruning":
          "Prune twice a year: Once in summer (cut back whippy shoots) and once in winter (structural prune).",
      "troubleshooting":
          "No blooms: Often due to high nitrogen fertilizer or the plant being too young (can take 7 years from seed!). Root pruning can shock it into bloom.\nInvasive: Sends runners everywhere. Stay vigilant.\nScale: Check woody stems for bumps.",
      "warning_note":
          "Seed pods are toxic to pets. The vine is heavy enough to pull down gutters.",
    },
  },
  {
    "name": "Yarrow",
    "scientific": "Achillea millefolium",
    "description": "Flat flower heads; ferny foliage; tough native.",
    "image":
        "https://images.unsplash.com/photo-1623861214300-47e192a688b1?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. Yarrow loves heat and light.",
      "light_low": "In shade, it becomes leggy, flops over, and won't bloom.",
      "light_avoid": "Wet, shady, stagnant spots.",
      "water_step1": "Water to establish.",
      "water_step2": "Extremely drought tolerant. It thrives on neglect.",
      "water_step3": "Do not overwater; it hates wet feet.",
      "water_frequency": "Weekly or less. Only when very dry.",
      "soil_type": "Poor, dry, sandy soil is best. Rich soil makes it flop.",
      "pot_type": "Meadow gardens or sunny borders.",
      "maintenance_cleaning": "Deadhead spent blooms to keep the color coming.",
      "maintenance_support":
          "Tall varieties typically need staking if grown in rich soil.",
      "maintenance_pruning": "Cut back basal foliage in late autumn.",
      "troubleshooting":
          "Flopping: The most common issue. Caused by too much water, too much fertilizer, or too much shade.\nPowdery Mildew: Can occur in stagnant air. Divide clumps to improve airflow.\nSpreading: It spreads by rhizomes and can be aggressive.",
      "warning_note": "Toxic to dogs, cats, and horses.",
    },
  },
  {
    "name": "Amaryllis",
    "scientific": "Hippeastrum",
    "description": "Huge trumpet flowers from large bulbs; holiday favorite.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Bright, indirect light indoors. Full sun can be too hot if close to a window.",
      "light_low": "Results in long, weak stems that topple over.",
      "light_avoid": "Direct, scorching sun which fades the blooms quickly.",
      "water_step1": "Water sparingly until you see the sprout tip appear.",
      "water_step2":
          "Once growing, keep soil consistently moist but never soggy.",
      "water_step3": "Stop watering in late summer to induce dormancy.",
      "water_frequency": "Weekly during growth phase.",
      "soil_type": "Standard, high-quality potting mix.",
      "pot_type":
          "Pot should be only slightly larger than the bulb (snug fit).",
      "maintenance_cleaning": "Remove individual flowers as they fade.",
      "maintenance_support":
          "The flower stalks get top-heavy; use a stake to prevent toppling.",
      "maintenance_pruning":
          "Cut the flower stalk down only after it has yellowed. Leave the leaves to feed the bulb for next year.",
      "troubleshooting":
          "No Bloom: Usually means the bulb didn't get a proper dormancy period (8 weeks cool and dry).\nRed Blotch: Fungal disease on bulb (Stagonospora). Discard if severe.\nToppling: Not enough light. Rotate the pot daily for even growth.",
      "warning_note": "The bulb is toxic to pets if chewed.",
    },
  },
  {
    "name": "Anemone",
    "scientific": "Anemone",
    "description": "Windflower; delicate petals in spring or fall.",
    "image":
        "https://images.unsplash.com/photo-1516528387618-afa90b13e000?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Partial shade is best. They prefer morning sun and afternoon protection.",
      "light_low":
          "They are native woodland plants and do well in filtered light.",
      "light_avoid": "Hot, dry, full sun locations.",
      "water_step1":
          "Keep soil consistently moist. They are not drought tolerant.",
      "water_step2": "Mulch well to retain soil moisture.",
      "water_step3": "Do not let the roots dry out completely.",
      "water_frequency": "Weekly; more often in heat.",
      "soil_type": "Rich, humus-y, woodland-type soil.",
      "pot_type": "Woodland gardens or shaded borders.",
      "maintenance_cleaning": "Clean up foliage after it dies back.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back to the ground in late winter before new growth emerges.",
      "troubleshooting":
          "Browning leaves: Usually a sign of dry soil or sun scorch. Water deeply.\nSlugs: They love the tender leaves. Use bait or traps.\nRust: Orange spots on leaves. Remove affected leaves.",
      "warning_note": "Toxic if large quantities are ingested.",
    },
  },
  {
    "name": "Aster",
    "scientific": "Symphyotrichum",
    "description": "Daisy-like fall bloomer; purple/pink.",
    "image":
        "https://images.unsplash.com/photo-1563241527-30058e57833d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal":
          "Full sun. Asters need plenty of sun to bloom profusely in the fall.",
      "light_low":
          "Tolerates light shade, but plants will be lanky and have fewer flowers.",
      "light_avoid": "Wet, shady locations.",
      "water_step1": "Keep soil moist to establish.",
      "water_step2": "Water at the base to prevent powdery mildew on leaves.",
      "water_step3": "Mulch to keep roots cool.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil.",
      "pot_type": "Garden beds, fall borders.",
      "maintenance_cleaning":
          "Deadhead spent flowers if you don't want them to self-seed.",
      "maintenance_support":
          "Tall varieties often need staking to stay upright.",
      "maintenance_pruning":
          "Pinch back the stems by one-third until July 4th. This makes the plant bushier and delays blooming until fall.",
      "troubleshooting":
          "Powdery Mildew: A common problem. White dust on leaves. Improve airflow and water only the base.\nLeggy: Too much shade or not pinched back.\nYellowing bottom leaves: Plant is drying out.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Canna Lily",
    "scientific": "Canna",
    "description": "Tropical bold foliage and bright spikes.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. Cannas love heat and light.",
      "light_low": "Growth is poor and blooms are scarce in shade.",
      "light_avoid":
          "Frost. They are tropical and turn to mush in freezing temps.",
      "water_step1": "They are thirsty plants! Water heavily.",
      "water_step2": "Keep soil consistently moist, even wet.",
      "water_step3": "They are 'gross feeders' - fertilize often.",
      "water_frequency": "2-3 times a week, or daily in pots.",
      "soil_type": "Rich, moisture-retentive soil with lots of compost.",
      "pot_type": "Large pots (they grow big rhizomes) or centerpieces.",
      "maintenance_cleaning": "Deadhead spent blooms to keep the show going.",
      "maintenance_support": "None usually needed; stems are thick.",
      "maintenance_pruning":
          "In cold climates, cut foliage down after frost and lift rhizomes to store indoors for winter.",
      "troubleshooting":
          "Leaf Roll: Canna Leaf Roller caterpillar seals the leaf shut. Squish it or spray BT.\nRust: Orange spots on leaves. Remove worst leaves and use fungicide.\nNo blooms: Not enough water or fertilizer.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Columbine",
    "scientific": "Aquilegia",
    "description": "Unique spurred flowers; woodland native.",
    "image":
        "https://images.unsplash.com/photo-1547820623-1d54523c9360?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Partial shade. They are woodland edge plants.",
      "light_low": "They do well in shade.",
      "light_avoid": "Hot, scorching afternoon sun.",
      "water_step1": "Keep soil evenly moist.",
      "water_step2":
          "Deep roots make them somewhat drought tolerant once established.",
      "water_step3": "Good drainage is required.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil. Not too fussy.",
      "pot_type": "Borders, rock gardens, or cottage gardens.",
      "maintenance_cleaning": "Remove unsightly foliage after blooming.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "If Leaf Miners attack the foliage (making white tunnels), shear the whole plant back to the ground. It will regrow fresh leaves.",
      "troubleshooting":
          "White tunnels: Leaf Miner. Very common. Doesn't kill the plant, just looks ugly. Cut it back.\nShort Lived: Individual plants don't live long, but they self-seed freely.\nRot: Wet clay soil is bad.",
      "warning_note": "Seeds and roots are toxic.",
    },
  },
  {
    "name": "Cosmos",
    "scientific": "Cosmos bipinnatus",
    "description": " airy, daisy-like annuals on thin stems.",
    "image":
        "https://images.unsplash.com/photo-1459156212016-c812468e2115?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Flowers",
    "details": {
      "light_ideal": "Full sun. Cosmos need light to produce flowers.",
      "light_low": "Shade makes them floppy and bloomless.",
      "light_avoid": "Rich, fertile soil. They prefer it tough!",
      "water_step1": "Water to establish.",
      "water_step2": "Extremely drought tolerant once growing.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Weekly is more than enough.",
      "soil_type":
          "Poor, sandy soil. DO NOT add manure or fertilizer, or you will get a giant green bush with no flowers.",
      "pot_type": "Back of the garden bed.",
      "maintenance_cleaning":
          "Deadhead regularly to keep blooms coming until frost.",
      "maintenance_support":
          "Tall varieties may flop in wind and need staking.",
      "maintenance_pruning": "Pinch young plants to make them bushier.",
      "troubleshooting":
          "No blooms: Usually 'killed with kindness' (too much fertilizer or water). Stop feeding.\nFlopping: Wind or rich soil. Stake them.\nAphids: Can cluster on tips. Spray off.",
      "warning_note": "Non-toxic.",
    },
  },

  {
    "name": "Boxwood",
    "scientific": "Buxus",
    "description": "Classic evergreen shrub for hedges and topiaries.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to partial shade. They are very versatile.",
      "light_low":
          "Tolerates shade well, making it perfect for underplanting trees.",
      "light_avoid":
          "Winter wind and hot afternoon sun in winter, which causes bronzing.",
      "water_step1":
          "Keep soil moist for the first year to establish the shallow roots.",
      "water_step2":
          "Mulch is essential to protect the roots from heat and cold.",
      "water_step3": "Water thoroughly during dry spells to prevent stress.",
      "water_frequency": "Weekly; more often in extreme heat.",
      "soil_type": "Well-drained, cool, loamy soil. Avoid heavy wet clay.",
      "pot_type": "Classic choice for formal containers and topiaries.",
      "maintenance_cleaning":
          "Clean out dead leaves from the interior of the plant annually to prevent fungal disease.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Shear for shape in late spring. Do not prune late in fall.",
      "troubleshooting":
          "Boxwood Blight: A serious disease causing brown spots and rapid leaf drop. Destroy infected plants.\nLeaf Miner: Causes blistered leaves. Treat with systemic insecticide.\nOrange leaves: Winter burn or stress.",
      "warning_note": "Toxic to pets if substantial amounts are ingested.",
    },
  },
  {
    "name": "Holly",
    "scientific": "Ilex",
    "description": "Glossy prickly leaves and red berries (on females).",
    "image":
        "https://images.unsplash.com/photo-1576019951804-0994541cb83d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to partial shade. More sun = more berries.",
      "light_low":
          "Will grow in shade but becomes leggy and produces few berries.",
      "light_avoid": "Deep, dark shade.",
      "water_step1": "Water deeply to establish deep roots.",
      "water_step2":
          "Once established, Hollies are moderately drought tolerant.",
      "water_step3": "Mulch to retain moisture and suppress weeds.",
      "water_frequency": "Weekly for the first year; less thereafter.",
      "soil_type":
          "Acidic, well-drained soil. Yellow leaves often mean the soil is not acidic enough.",
      "pot_type":
          "Excellent for hedges, foundation plantings, or specimen pots.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune in late winter before new growth begins. Can be sheared.",
      "troubleshooting":
          "No Berries: You need a male plant nearby to pollinate the female plants (unless you have a self-fertile variety).\nYellow Leaves: Iron Chlorosis due to high pH soil. Apply soil acidifier.\nLeaf Miner: Tunnels in leaves. Systemic treatment needed.",
      "warning_note": "Berries are toxic to pets and children. Do not eat.",
    },
  },
  {
    "name": "Rhododendron",
    "scientific": "Rhododendron",
    "description": "Large leaved evergreen with massive spring trusses.",
    "image":
        "https://images.unsplash.com/photo-1558293842-c0fd3db84100?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Dappled shade is perfect. They love morning sun but hate hot afternoons.",
      "light_low": "Tolerates shade, but bloom quality decreases.",
      "light_avoid": "Full, baking, hot sun and strong winds.",
      "water_step1": "Keep soil consistently moist but never soggy.",
      "water_step2": "They have shallow fibrous roots that dry out quickly.",
      "water_step3":
          "Mulch is mandatory (2-3 inches) to keep roots cool and moist.",
      "water_frequency": "Weekly; check often during heatwaves.",
      "soil_type":
          "Acidic (pH 4.5-6.0), organic, humus-rich soil. Critical for success.",
      "pot_type": "Large tubs or shrub borders protected from wind.",
      "maintenance_cleaning":
          "Deadhead spent trusses carefully (snap them off) to save energy.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune immediately after flowering. Pruning late cuts off next year's buds.",
      "troubleshooting":
          "Yellow Leaves: Iron Chlorosis (not acidic enough). Use acid fertilizer.\nWilting: Phytophthora root rot caused by warm, wet soil. Improve drainage.\nBurned Edges: Sun scald or wind burn. Move to a sheltered spot.",
      "warning_note":
          "Highly toxic to pets and livestock (contains Grayanotoxins).",
    },
  },
  {
    "name": "Forsythia",
    "scientific": "Forsythia",
    "description": "Harbinger of spring; bright yellow branch-covering blooms.",
    "image":
        "https://images.unsplash.com/photo-1519681393784-d120267933ba?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun (6+ hours). The more sun, the better the bloom.",
      "light_low": "In shade, it becomes leggy and blooms sparsely.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water well to establish.",
      "water_step2": "Once rooted, it is quite drought tolerant.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Weekly during first season; rarely thereafter.",
      "soil_type": "Average, well-drained soil. Not fussy.",
      "pot_type": "Hedges, borders, or mass plantings.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune immediately after flowering finishes in spring. You can cut it back to the ground if an old bush needs rejuvenation.",
      "troubleshooting":
          "No blooms: Pruned too late in the year (buds form in summer for next spring).\nGall: Warty growths on stems. Prune out affected branches.\nLeggy: Old wood needs thinning.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Butterfly Bush",
    "scientific": "Buddleia davidii",
    "description": "Magnet for butterflies; long flower spikes.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun. Needs heat and light to produce nectar for butterflies.",
      "light_low": "Stems become weak and floppy in shade.",
      "light_avoid": "Wet soil in winter is fatal.",
      "water_step1": "Water to establish young plants.",
      "water_step2": "Very drought tolerant once established.",
      "water_step3": "Perfect drainage is essential.",
      "water_frequency": "Weekly.",
      "soil_type": "Average to poor, well-drained soil. Avoid clay.",
      "pot_type": "Perennial borders or butterfly gardens.",
      "maintenance_cleaning":
          "Deadhead spent flower spikes to prevent prolific self-seeding (in some regions).",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "In cold climates, it dies back. Cut it down to 12 inches in early spring. It blooms on new wood.",
      "troubleshooting":
          "Rot: Wet heavy soil causes root rot.\nSpider Mites: Can attack leaves in hot dry weather.\nInvasive: Can spread aggressively by seed; check local regulations.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Juniper",
    "scientific": "Juniperus",
    "description": "Tough evergreen; groundcovers to uprights.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Junipers love baking heat.",
      "light_low": "Shade causes thin, open, unattractive growth.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water deeply to establish.",
      "water_step2": "Extremely drought tolerant. Excellent for xeriscaping.",
      "water_step3": "Ensure soil does not stay soggy.",
      "water_frequency": "Every 2 weeks when young; rarely when mature.",
      "soil_type": "Sandy, rocky, dry soil. Tolerates poor conditions well.",
      "pot_type": "Slopes, banks, or groundcovers.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune selectively to shape. Do not cut back into old wood (it won't regrow).",
      "troubleshooting":
          "Browning Tips: Phomopsis blight (fungus). Prune out affected tips.\nWebs: Spider mites love dry conditions. Spray with water.\nRust: Cedar-Apple Rust causes galls. Do not plant near Apple trees.",
      "warning_note": "Berries are mildly toxic if eaten in quantity.",
    },
  },
  {
    "name": "Arborvitae",
    "scientific": "Thuja occidentalis",
    "description": "Popular fast-growing privacy screen evergreen.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Essential for dense growth.",
      "light_low": "Becomes thin and open in shade.",
      "light_avoid": "Road salt spray (it turns brown) and dry winter winds.",
      "water_step1":
          "Keep soil moist, especially in late autumn before ground freezes.",
      "water_step2": "They have shallow roots and dry out easily.",
      "water_step3": "Mulch is important.",
      "water_frequency": "Weekly; water deeply in fall.",
      "soil_type": "Moist, neutral to alkaline, well-drained loam.",
      "pot_type": "Hedges and screens.",
      "maintenance_cleaning":
          "Clean out dead needles from inner branches (natural shedding).",
      "maintenance_support":
          "Multi-stemmed types may splay open in heavy snow. Tie them loosely.",
      "maintenance_pruning": "Shear in early summer to maintain hedge shape.",
      "troubleshooting":
          "Deer: They love Arborvitae! Use fencing or strong repellents.\nBagworms: Look for cone-like bags hanging on branches. Pick off immediately.\nWinter Burn: South side turns brown. Wrap in burlap for winter protection.",
      "warning_note": "Toxic to livestock and pets.",
    },
  },
  {
    "name": "Barberry",
    "scientific": "Berberis",
    "description": "Thorned shrub with purple/gold foliage.",
    "image":
        "https://images.unsplash.com/photo-1559869680-a61b8f1c305a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun brings out the best purple/gold foliage color.",
      "light_low":
          "Foliage keeps color reasonably well, but may revert to green in deep shade.",
      "light_avoid": "Soggy, wet soil.",
      "water_step1": "Water to establish.",
      "water_step2": "Very drought tolerant and tough.",
      "water_step3": "Tolerates urban pollution.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil. Tolerates clay.",
      "pot_type": "Barrier hedges (due to thorns) or foundation.",
      "maintenance_cleaning": "Wear thick gloves! The thorns are painful.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Prune anytime to shape. Can be sheared.",
      "troubleshooting":
          "Reverting: Green shoots on a purple plant? Cut them out.\nRust: Can be a host for wheat rust (check agricultural restrictions).\nInvasive: Self-seeds aggressively in some areas.",
      "warning_note": "Sharp thorns. Berries mildly toxic.",
    },
  },
  {
    "name": "Burning Bush",
    "scientific": "Euonymus alatus",
    "description": "Brilliant fiery red fall color.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun is required for the brilliant red fall color.",
      "light_low": "In shade, fall color will be a dull pink or washed out.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Moderately drought tolerant.",
      "water_step3": "Adaptable to many conditions.",
      "water_frequency": "Weekly.",
      "soil_type": "Any well-drained soil. Tolerates pH range well.",
      "pot_type": "Hedges, screens, or specimen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Shear annually or prune selectively.",
      "troubleshooting":
          "Scale: White specks on branches. Apply horticultural oil.\nSpider Mites: Look for stippling on leaves.\nInvasive: Spreads into woodlands (Consider sterile cultivars).",
      "warning_note": "All parts are toxic if ingested.",
    },
  },
  {
    "name": "Spirea",
    "scientific": "Spiraea",
    "description": "Easy care shrub; white or pink flower clusters.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun. Spirea is very hardy and blooms best in full light.",
      "light_low": "Tolerates light shade, but flowering will be reduced.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2":
          "Reasonably drought tolerant once established, though prefers regular moisture.",
      "water_step3": "Good drainage is required.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil. Adaptable.",
      "pot_type": "Foundation plantings or low hedges.",
      "maintenance_cleaning":
          "Deadhead (shear off) spent flowers to encourage a second flush of bloom.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Rejuvenate every few years by cutting the oldest stems to the ground in late winter. Can be sheared.",
      "troubleshooting":
          "Aphids: Cluster on new growth tips. Spray with water or insecticidal soap.\nPowdery Mildew: Can occur in late summer if air is stagnant.\nLeggy: Old wood needs thinning out.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Viburnum",
    "scientific": "Viburnum",
    "description": "Diverse group; fragrant flowers, berries, fall color.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun to partial shade. Most varieties tolerate varied light.",
      "light_low":
          "Tolerates shade well, making it a valuable landscape shrub.",
      "light_avoid": "Extended drought.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2":
          "Water deeply during dry spells; wilting leaves indicate stress.",
      "water_step3": "Mulch to retain moisture.",
      "water_frequency": "Weekly; more often in heat.",
      "soil_type": "Moist, well-drained, slightly acidic soil.",
      "pot_type": "Borders, screens, or specimen plants.",
      "maintenance_cleaning": "Clean up fallen fruit if it becomes messy.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune immediately after flowering to shape. Thin out old canes annually.",
      "troubleshooting":
          "Holes in leaves: Viburnum Leaf Beetle larvae skeletonize leaves. Treat larvae in spring!\nNo Berries: Many Viburnums need a different variety nearby for cross-pollination.\nBorers: Can attack stressed plants, causing stem dieback.",
      "warning_note":
          "Berries are mildly toxic to humans (stomach upset), though birds love them.",
    },
  },
  {
    "name": "Weigela",
    "scientific": "Weigela florida",
    "description": "Trumpet flowers; purple foliage varieties popular.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun is best for heavy blooming and intense foliage color.",
      "light_low": "In shade, purple-leaved varieties grow green and leggy.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Average water needs; tolerates occasional dry spells.",
      "water_step3": "Mulch to keep roots cool.",
      "water_frequency": "Weekly.",
      "soil_type":
          "Average, well-drained soil. Tolerates clay better than many shrubs.",
      "pot_type": "Mixed borders.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune right after flowering. Remove dead wood in early spring.",
      "troubleshooting":
          "Dieback: Can suffer winter kill in cold zones; prune out dead wood.\nOvergrown: Grows fast; might need rejuvenation pruning (cutting back 1/3 of stems).\nFew Flowers: Usually due to too much shade.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Ninebark",
    "scientific": "Physocarpus opulifolius",
    "description": "Peeling bark; purple/copper leaves; native.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun to partial shade. Dark foliage varieties need sun to keep color.",
      "light_low": "Turns green in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Very adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Adaptable to clay, rocky, or dry soils.",
      "pot_type": "Background border or screen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune in late winter to shape. Cut 1/3 of oldest stems to ground to rejuvenate.",
      "troubleshooting":
          "Powdery Mildew: Common on older varieties. Improve airflow or plant resistant cultivars.\nAphids: Often cluster on tender tips.\nLeggy: Needs more sun or rejuvenation pruning.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Red Twig Dogwood",
    "scientific": "Cornus sericea",
    "description": "Bright red stems in winter; white berries.",
    "image":
        "https://images.unsplash.com/photo-1519681393784-d120267933ba?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to partial shade. Stem color is best in sun.",
      "light_low": "Good shade tolerance, but may be less dense.",
      "light_avoid": "Hot, dry locations.",
      "water_step1": "Keep soil moist. This is a wetland native.",
      "water_step2": "Tolerates wet, boggy soil well.",
      "water_step3": "Water frequently in summer heat.",
      "water_frequency": "Weekly; more often if in dry soil.",
      "soil_type": "Rich, wet to average soil. Great for rain gardens.",
      "pot_type": "Rain gardens or property borders.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Remove 1/3 of the oldest stems annually in late winter. The bright red color is ONLY on young wood.",
      "troubleshooting":
          "Leaf Spot: Fungal spots in rainy summers. Dispose of fallen leaves.\nScale: White bumps on stems. Use dormant oil.\nLoss of color: Stems are too old. You must prune to get new red growth.",
      "warning_note":
          "Berries are not for human consumption, but birds eat them.",
    },
  },
  {
    "name": "Privet",
    "scientific": "Ligustrum",
    "description": "Fast-growing evergreen/semi-evergreen hedge.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to shade. Privet is not fussy.",
      "light_low": "Tolerates shade, making it a common hedge choice.",
      "light_avoid": "None really; it's very tough.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Very resilient.",
      "water_frequency": "Weekly.",
      "soil_type": "Any soil type.",
      "pot_type": "Hedges (almost exclusively).",
      "maintenance_cleaning": "Sweep up trimmings after shearing.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Shear frequently (2-3 times a year) to maintain a neat hedge.",
      "troubleshooting":
          "Invasive: Spreads by berries and runners. Check local invasive lists before planting.\nAnthracnose: Can cause dieback/cankers. Prune out.\nMites: Leave bronzing/stippling.",
      "warning_note": "Berries and leaves are toxic to humans and pets.",
    },
  },
  {
    "name": "Wintercreeper",
    "scientific": "Euonymus fortunei",
    "description": "Evergreen groundcover or climber.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Sun or shade. Another tough, adaptable survivor.",
      "light_low": "Excellent groundcover for deep shade.",
      "light_avoid": "None.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant.",
      "water_step3": "Adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Any well-drained soil.",
      "pot_type": "Groundcover, bank stabilizer, or climber.",
      "maintenance_cleaning": "None.",
      "maintenance_support":
          "Will climb walls if allowed (and roots can damage mortar).",
      "maintenance_pruning": "Shear or mow high to keep it neat.",
      "troubleshooting":
          "Scale: Euonymus Scale (white flaky specks) is a major issue. Hard to control; use oil or replace plant.\nCrown Gall: Warty growths near soil line.\nInvasive: Can smother native plants.",
      "warning_note": "Parts of the plant are toxic.",
    },
  },
  {
    "name": "Cotoneaster",
    "scientific": "Cotoneaster",
    "description": "Groundcover or arching shrub; red berries.",
    "image":
        "https://images.unsplash.com/photo-1576019951804-0994541cb83d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Tolerates light shade, but full sun produces more berries.",
      "light_avoid": "Wet, soggy shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Once established, very drought tolerant.",
      "water_step3": "Good drainage is key.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor, dry, well-drained soil. Thrives on neglect.",
      "pot_type": "Bank stabilization or groundcover.",
      "maintenance_cleaning": "Catch litter that gets trapped in the branches.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune to control spread. Remove upright shoots on groundcover types.",
      "troubleshooting":
          "Fire Blight: Tips turn black and look burned. Prune deeply into healthy wood and disinfect tools.\nMites: Spider mites can cause webbing.\nLace Bug: Leaves look stippled or gray.",
      "warning_note": "Berries are mildly toxic to humans.",
    },
  },
  {
    "name": "Yew",
    "scientific": "Taxus",
    "description": "Dense evergreen; tolerates pruning and shade.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Sun or Shade. Yews are famously shade tolerant.",
      "light_low": "One of the best conifers for deep shade.",
      "light_avoid": "WET SOIL. Yews die quickly in standing water.",
      "water_step1": "Keep moist but never soggy.",
      "water_step2": "Excellent drainage is critical.",
      "water_step3": "Mulch roots to keep cool.",
      "water_frequency": "Weekly.",
      "soil_type": "Well-drained, fertile loam. pH neutral.",
      "pot_type": "Foundation plantings and formal hedges.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Takes shearing very well. Can also be cut back into old wood and will regrow (unlike other conifers).",
      "troubleshooting":
          "Root Rot: The #1 killer. If it wilts in wet soil, it's likely dying.\nWinter Burn: Browning needles from wind/sun desiccation.\nBlack Vine Weevil: Notches eaten out of leaf margins.",
      "warning_note":
          "EXTREMELY TOXIC. The seeds and needles contain taxine, which can cause cardiac arrest in pets and humans. Do not plant near horse pastures.",
    },
  },
  {
    "name": "Mahonia",
    "scientific": "Mahonia aquifolium",
    "description": "Oregon Grape; holly-like leaves; yellow flowers.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Partial to full shade. Too much sun scorches the leaves.",
      "light_low": "Thrives in deep shade.",
      "light_avoid": "Winter sun and wind, which cause desiccation.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Mulch to retain moisture.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, moist, well-drained soil.",
      "pot_type": "Shade gardens/Woodland borders.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune tall canes to ground to encourage bushiness. Can spread by suckers.",
      "troubleshooting":
          "Rust: Bright orange spots on leaves. Remove affected foliage.\nWinter Burn: Brown, crispy leaves. Protect from wind.\nScorched: Bronze/bleached leaves from too much sun.",
      "warning_note":
          "Berries are edible but sour. Roots contain berberine (yellow).",
    },
  },
  {
    "name": "Nandina",
    "scientific": "Nandina domestica",
    "description": "Heavenly Bamboo; fine texture; red berries.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to shade. Sun produces better red fall color.",
      "light_low": "Tolerates shade, but color will be greener.",
      "light_avoid": "None.",
      "water_step1": "Water to establish.",
      "water_step2": "Very drought tolerant.",
      "water_step3": "Adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil.",
      "pot_type": "Foundation, container, or hedge.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune out tallest canes to keep compact. Can become leggy.",
      "troubleshooting":
          "Viruses: Leaf curl/distortion. No cure; destroy plant.\nIron Chlorosis: Yellow leaves in alkaline soil.\nInvasive: Berries spread by birds in warmer climates.",
      "warning_note":
          "Berries contain cyanide compounds - toxic to cats and grazing animals.",
    },
  },
  {
    "name": "Pieris",
    "scientific": "Pieris japonica",
    "description": "Andromeda; lily-of-the-valley flowers; evergreen.",
    "image":
        "https://images.unsplash.com/photo-1558293842-c0fd3db84100?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Part shade. Morning leaves and afternoon shade prevent leaf scorch.",
      "light_low": "Tolerates shade well, though flowering may be reduced.",
      "light_avoid": "Hot afternoon sun, especially in warmer climates.",
      "water_step1": "Keep soil consistently moist but well-drained.",
      "water_step2": "Do not let the roots dry out completely.",
      "water_step3":
          "Mulch with pine needles or bark to maintain acidity and moisture.",
      "water_frequency": "Weekly; more often in hot weather.",
      "soil_type": "Rich, acidic, well-drained soil (like Azaleas).",
      "pot_type": "Foundation plantings or woodland borders.",
      "maintenance_cleaning":
          "Deadhead spent flower clusters to improve appearance.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune immediately after flowering if needed. Remove dead wood.",
      "troubleshooting":
          "Lace Bug: Leaves look yellow/stippled or gray. Treat with systemic insecticide.\nRot: Heavy clay soil causes root rot. Improve drainage.\nYellowing: Iron chlorosis due to alkaline soil. Add soil acidifier.",
      "warning_note":
          "Highly toxic to pets and humans if ingested (Grayanotoxins).",
    },
  },
  {
    "name": "Potentilla",
    "scientific": "Potentilla fruticosa",
    "description": "Cinquefoil; long blooming yellow flowers; very cold hardy.",
    "image":
        "https://images.unsplash.com/photo-1563241527-30058e57833d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal":
          "Full sun. Needs at least 6 hours of sun for best flowering.",
      "light_low":
          "It will survive in part shade but will look scraggly and barely bloom.",
      "light_avoid":
          "Heat and high humidity at night (struggles in the South).",
      "water_step1": "Water well to establish.",
      "water_step2": "Once rooted, it is incredibly drought tolerant.",
      "water_step3": "Good drainage is essential.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor, dry, or sandy soil. Very cold hardy.",
      "pot_type": "Foundation plantings, borders, or low hedges.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Shear back by one-third in late winter or early spring to keep it tidy.",
      "troubleshooting":
          "Spider Mites: Can bronze the leaves in hot, dry weather. Spray with water.\nFade: Flowers fade quickly in intense heat (normal).\nRot: Wet, heavy soil will kill it.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Flowering Quince",
    "scientific": "Chaenomeles",
    "description": "Early spring blooms on thorny branches.",
    "image":
        "https://images.unsplash.com/photo-1519681393784-d120267933ba?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to partial shade.",
      "light_low": "Flowering is reduced in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Extremely drought tolerant once established.",
      "water_step3": "Adaptable to dry conditions.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil. Tolerates clay.",
      "pot_type": "Barrier hedge (due to thorns).",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune after flowering in spring. Older canes can be removed to rejuvenate.",
      "troubleshooting":
          "Leaf Spot: Fungal spots are common in wet springs. Clean up fallen leaves.\nScale: White specks on stems. Use horticultural oil.\nFire Blight: Tips turn brown and curl visually.",
      "warning_note":
          "Thorns are sharp and painful. Be careful working around it.",
    },
  },
  {
    "name": "Rose of Sharon",
    "scientific": "Hibiscus syriacus",
    "description": "Late summer blooming shrub; hibiscus relative.",
    "image":
        "https://images.unsplash.com/photo-1559869680-a61b8f1c305a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Heat lover.",
      "light_low": "Fewer blooms and leggier growth in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Keep soil moist to establish.",
      "water_step2": "Once established, it is fairly drought tolerant.",
      "water_step3": "Mulch to retain moisture.",
      "water_frequency": "Weekly. Leaves may yellow/drop if very dry.",
      "soil_type": "Rich, well-drained soil preferred.",
      "pot_type": "Specimen shrub or hedge.",
      "maintenance_cleaning":
          "Deadhead spent flowers prevents the millions of seedlings that can become weeds.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune heavily in late winter. It blooms on new wood, so prune hard for big flowers.",
      "troubleshooting":
          "Aphids: Love the succulent new buds. Spray them off.\nBud Drop: Consistent water prevents buds from dropping in heat.\nSeeding: It can be invasive in some gardens due to seedlings.",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Smoke Bush",
    "scientific": "Cotinus coggygria",
    "description": "Purple foliage; misty 'smoke' flower plumes.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Purple foliage needs sun to stay dark.",
      "light_low": "Turns green in shade.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Do not overwater; susceptible to root diseases.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor, rocky, well-drained soil. Avoid heavy wet clay.",
      "pot_type": "Specimen plant.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Two options: 1) Prune hard to ground (coppice) in spring for GIANT leaves but no flowers. 2) Leave alone for smoky flowers.",
      "troubleshooting":
          "Wilt: Verticillium Wilt is a soil pathogen that kills branches suddenly. No cure; remove plant.\nLeaf Spot: Fungal spots if wet.\nLeggy: Gets scraggly with age; prune to reshape.",
      "warning_note": "Sap can cause skin irritation in some people.",
    },
  },
  {
    "name": "Sumac",
    "scientific": "Rhus typhina",
    "description": "Native; ferny leaves; brilliant red fall color.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Best fall color in sun.",
      "light_low": "Tolerates partial shade.",
      "light_avoid": "None.",
      "water_step1": "Water to establish.",
      "water_step2": "Extremely drought tolerant.",
      "water_step3": "Excellent colonizer for poor soils.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor, dry, sandy, or rocky soil.",
      "pot_type": "Naturalized areas or banks.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "It spreads by suckers to form a colony. Mowing around it controls the spread.",
      "troubleshooting":
          "Suckers: If you want just one plant, you fight a losing battle. Let it colonize.\nWilt: Fusarium can cause dieback.\nWeak Wood: Branches break in heavy snow.",
      "warning_note":
          "Skin irritation possible. (Note: NOT the same as Poison Sumac).",
    },
  },
  {
    "name": "Witch Hazel",
    "scientific": "Hamamelis",
    "description": "Late winter blooms; fragrant spidery yellow flowers.",
    "image":
        "https://images.unsplash.com/photo-1519681393784-d120267933ba?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to part shade (flowering best in sun).",
      "light_low": "Tolerates shade, but grows more open.",
      "light_avoid": "Dry heat in summer.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Unlike many shrubs, it needs water in summer droughts.",
      "water_step3": "Mulch is beneficial.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, well-drained soil.",
      "pot_type": "Woodland edge or shrub border.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Prune in spring after flowering finishes to control shape.",
      "troubleshooting":
          "Herbicide Drift: Very sensitive to lawn weed killers. Be careful.\nGall: Cone shaped bumps on leaves are cosmetic galls; ignore them.\nScorch: Leaves burn in dry droughts.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Yucca",
    "scientific": "Yucca filamentosa",
    "description": "Spiky sword leaves; tall white flower spike.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun. Heat and drought lover.",
      "light_low": "Becomes floppy and won't bloom in shade.",
      "light_avoid": "Wet soil is the only thing that kills it.",
      "water_step1": "Water to establish.",
      "water_step2":
          "Extremely drought tolerant. The definition of xeriscape plant.",
      "water_step3": "Excellent drainage required.",
      "water_frequency": "Every 2-3 weeks.",
      "soil_type": "Sandy, poor, gritty soil.",
      "pot_type": "Architectural accent or dry garden.",
      "maintenance_cleaning": "Remove dead lower leaves (carefully!).",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut off the flower stalk at the base after blooming.",
      "troubleshooting":
          "Rot: Crown rot in wet soil is fatal.\nLeaf Spot: Bacterial or fungal spots if too humid. Remove leaves.\nSpreading: Produces 'pups' (offsets). Dig them out to control spread.",
      "warning_note":
          "Leaf tips are needle-sharp! Plant away from paths. Toxic to pets.",
    },
  },
  {
    "name": "Elderberry",
    "scientific": "Sambucus",
    "description":
        "Fast growing; white flower clusters; edible (cooked) berries.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Full sun to part shade.",
      "light_low": "Becomes leggy and fewer berries in shade.",
      "light_avoid": "Dry, sandy soil.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Tolerates wet, boggy soil well.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "Weekly; loves water.",
      "soil_type": "Humus-rich, moist soil.",
      "pot_type": "Natural areas or rain gardens.",
      "maintenance_cleaning": "Prune out dead wood.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back hard annually in late winter to manage size and encourage vigorous new growth (which blooms best).",
      "troubleshooting":
          "Borers: Can attack stems. Prune them out.\nBirds: They will eat all the fruit. Use netting if you want berries.\nSpreading: Spreads by suckers.",
      "warning_note":
          "Raw berries, stems, and leaves are toxic. Berries MUST be cooked before eating.",
    },
  },
  {
    "name": "Daphne",
    "scientific": "Daphne odora",
    "description": "Incredible fragrance; temperamental plant.",
    "image":
        "https://images.unsplash.com/photo-1558293842-c0fd3db84100?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Shrubs",
    "details": {
      "light_ideal": "Dappled shade.",
      "light_low": "Shade tolerant.",
      "light_avoid": "Hot sun/Root disturbance.",
      "water_step1": "Keep moist.",
      "water_step2": "Perfect drainage needed.",
      "water_step3": "Do not overwater.",
      "water_frequency": "Weekly.",
      "soil_type": "Neutral, humus, porous.",
      "pot_type": "Specimen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Do not prune heavily.",
      "troubleshooting":
          "Sudden death: Root rot/Virus (No cure).\nYellowing: Soil pH imbalance (Check pH).\nWinter dieback: Cold (Protect).",
      "warning_note": "Highly TOXIC berries/sap.",
    },
  },

  {
    "name": "Maiden Grass",
    "scientific": "Miscanthus sinensis",
    "description": "Elegant ornamental grass with feathery plumes.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Full sun. Needs at least 6 hours of direct sun to prevent flopping.",
      "light_low": "Shade causes weak stems that fall over.",
      "light_avoid": "Deep shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Once established, it is drought tolerant.",
      "water_step3": "Tolerates varied moisture levels.",
      "water_frequency": "Weekly.",
      "soil_type": "Average, well-drained soil. Adaptable to clay or sand.",
      "pot_type": "Privacy screen or specimen plant.",
      "maintenance_cleaning":
          "None during the growing season. Leave plumes for winter interest.",
      "maintenance_support":
          "Staking may be needed if planted in too much shade.",
      "maintenance_pruning":
          "Cut back to 4-6 inches in late winter (February/March) before new growth starts.",
      "troubleshooting":
          "Flopping: Too much shade or excess nitrogen fertilizer. Move to sun or stop feeding.\nRust: Orange spots on leaves in humid weather.\nInvasive: Some varieties seed aggressively. Choose sterile cultivars.",
      "warning_note":
          "Leaf edges are razor sharp. Wear gloves and long sleeves when pruning.",
    },
  },
  {
    "name": "Fountain Grass",
    "scientific": "Pennisetum",
    "description": "Mounding grass with fuzzy 'foxtail' flowers.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Warm season grass that loves heat.",
      "light_low": "Flowering is poor to non-existent in shade.",
      "light_avoid": "Wet soil in winter. Fatal.",
      "water_step1": "Water to establish.",
      "water_step2": "Quite drought tolerant.",
      "water_step3": "Requires excellent drainage.",
      "water_frequency": "Weekly.",
      "soil_type": "Average to poor, well-drained soil.",
      "pot_type": "Container thrille or mass planting.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back old foliage in late winter to make way for new growth.",
      "troubleshooting":
          "Rot: Wet, heavy soil causes crown rot. Improve drainage.\nNo Plumes: Not enough sun.\nWinter Kill: Many Pennisetums are not hardy in cold zones (treat as annuals).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Blue Fescue",
    "scientific": "Festuca glauca",
    "description": "Small, tidy tufts of steel-blue blades.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Blue color is best in full sun.",
      "light_low": "Turns green and opens up loosely in shade.",
      "light_avoid": "Wet, soggy shade.",
      "water_step1": "Water lightly to establish.",
      "water_step2": "Very drought tolerant.",
      "water_step3": "Must have sharp drainage.",
      "water_frequency": "Weekly.",
      "soil_type": "Poor, sandy, rocky, or dry soil. Hates clay.",
      "pot_type": "Edging or rock gardens.",
      "maintenance_cleaning":
          "Comb out dead brown blades with your fingers (wear gloves).",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Shear back in early spring to 3 inches. Divide every 2-3 years if center dies out.",
      "troubleshooting":
          "Rot: Heavy wet soil melts it out.\nBrowning: High heat and humidity can cause summer dormancy.\nDivots: Center dies out as clumps age. Dig and divide.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Pampas Grass",
    "scientific": "Cortaderia selloana",
    "description": "Huge, showy grass with massive plumes.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Massive size requires big energy source.",
      "light_low": "Becomes floppy and sad in shade.",
      "light_avoid": "Cold, wet soil (causes rot).",
      "water_step1": "Water to establish.",
      "water_step2": "Extremely drought tolerant once large.",
      "water_step3": "Tough as nails.",
      "water_frequency": "Every 2 weeks.",
      "soil_type": "Any well-drained soil.",
      "pot_type": "Large privacy screen (Note: IT GETS HUGE).",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back in late winter. WEAR LONG LEAVES AND LEATHER GLOVES. The leaves are saws.",
      "troubleshooting":
          "Rot: Standing water or wet feet kills it.\nInvasive: Seeds blow everywhere. Remove plumes before they shatter if in a sensitive area.\nBrown Tips: Drought stress.",
      "warning_note":
          "Leaves are extremely sharp and can cut skin like paper cuts. Plant away from walkways.",
    },
  },
  {
    "name": "Switch Grass",
    "scientific": "Panicum virgatum",
    "description": "Native upright grass; airy seed heads; fall color.",
    "image":
        "https://images.unsplash.com/photo-1597848212624-a19eb35a2651?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Native prairie grass.",
      "light_low": "flops over in shade.",
      "light_avoid": "Shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Deep rooted and very drought tolerant.",
      "water_step3": "Adaptable to wet or dry.",
      "water_frequency": "Weekly.",
      "soil_type": "Average to poor soil. Too much fertility makes it flop.",
      "pot_type": "Meadow, rain garden, or screen.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back to a few inches in late winter.",
      "troubleshooting":
          "Flopping: The #1 issue. Caused by shade or rich soil. Do not fertilize!\nRust: Fungal spots can occur.\nInvasive: Can reseed.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Feather Reed Grass",
    "scientific": "Calamagrostis acutiflora",
    "description": "Strictly upright; 'Karl Foerster' most common.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Starts growing early in spring.",
      "light_low": "Tolerates light shade better than other grasses.",
      "light_avoid": "Deep shade.",
      "water_step1": "Keep moist.",
      "water_step2": "Tolerates heavy clay soil well.",
      "water_step3": "Adaptable to wet sites.",
      "water_frequency": "Weekly.",
      "soil_type": "Heavy clay, loam, or average soil.",
      "pot_type": "Vertical accent in tight spaces.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None. Very stiff upright habit.",
      "maintenance_pruning":
          "Cut back in very early spring before new green shoots appear.",
      "troubleshooting":
          "Rust: Orange pustules on leaves. Improve airflow.\nFlopping: If in shade, it may lean.\nNone: Sterile seeds mean no weeding!",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Japanese Forest Grass",
    "scientific": "Hakonechloa macra",
    "description": "Cascading bamboo-like shade grass; gold varieties.",
    "image":
        "https://images.unsplash.com/photo-1444908316712-4277b0c538a7?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Partial shade to shade. The gold turns lime green in deep shade.",
      "light_low": "Excellent shade plant.",
      "light_avoid": "Hot afternoon sun (scorch) and dry soil.",
      "water_step1": "Keep consistently moist.",
      "water_step2": "Mulch is essential.",
      "water_step3": "Do not let it dry out.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, organic, moist soil.",
      "pot_type": "Shade border or container spiller.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back in late winter. It is slow to emerge in spring.",
      "troubleshooting":
          "Scorch: Bleached leaves in sun. Move to shade.\nRot: Heavy wet clay can kill it. Amend soil.\nSlow Growth: Takes years to reach full size (be patient).",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Mondo Grass",
    "scientific": "Ophiopogon japonicus",
    "description": "Grass-like groundcover; dark green or black.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Part shade to shade.",
      "light_low": "Excellent groundcover for shade.",
      "light_avoid": "Full hot sun (fades color).",
      "water_step1": "Keep moist.",
      "water_step2": "Drought tolerant once established.",
      "water_step3": "Adaptable.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, well-drained soil preferred.",
      "pot_type": "Groundcover or edging.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Mow high in early spring if winter leaves look ragged.",
      "troubleshooting":
          "Snails/Slugs: Can hide in the dense foliage.\nBrown Tips: Salt damage or drought. Flush soil.\nRot: Wet feet causes root rot.",
      "warning_note": "Berries are mildly toxic.",
    },
  },
  {
    "name": "Liriope",
    "scientific": "Liriope muscari",
    "description": "Lilyturf; grass-like with purple flower spikes.",
    "image":
        "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Sun or Shade. Extremely adaptable.",
      "light_low": "One of the best groundcovers for dry shade.",
      "light_avoid": "None.",
      "water_step1": "Water to establish.",
      "water_step2": "Very tough and drought tolerant.",
      "water_step3": "Tolerates difficult sites.",
      "water_frequency": "Weekly.",
      "soil_type": "Any soil.",
      "pot_type": "Edging, groundcover, or erosion control.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Mow off old leaves in early spring before new spikes appear.",
      "troubleshooting":
          "Crown Rot: Occurs in wet, poorly drained soil.\nAnthracnose: Reddish spots on leaves. Remove affected foliage.\nSlugs: Can eat holes in leaves.",
      "warning_note": "Berries are toxic.",
    },
  },
  {
    "name": "Sedge",
    "scientific": "Carex",
    "description": "Grass-like plants for shade/wet; huge variety.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Part shade to shade.",
      "light_low": "Good choice for shady/wet spots.",
      "light_avoid": "Hot dry sun.",
      "water_step1": "Keep moist.",
      "water_step2": "Many varieties love wet soil (check specific type).",
      "water_step3": "Do not let dry out completely.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, humus-rich.",
      "pot_type": "Groundcover or rain garden.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back only if ragged. Many are evergreen.",
      "troubleshooting":
          "Brown Tips: Leaf scorch from dry soil.\nRust: Fungal spots. Improve airflow.\nDieback: Crown rot from stagnant water.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Boston Fern",
    "scientific": "Nephrolepis exaltata",
    "description": "Classic hanging basket fern; lush fronds.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Indirect bright light to partial shade.",
      "light_low":
          "Tolerates lower light but grows slower and fronds may thin.",
      "light_avoid": "Direct sun burns the delicate fronds.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Never let the root ball dry out completely.",
      "water_step3": "Mist daily; craves high humidity.",
      "water_frequency": "Daily or every other day. Thirsty plant.",
      "soil_type": "Peaty, moisture-retentive potting mix.",
      "pot_type": "Hanging basket or pedestal.",
      "maintenance_cleaning": "Remove crispy brown fronds to keep it tidy.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim long runners if desired.",
      "troubleshooting":
          "Brown Leaflets: Low humidity or dry soil. Mist more.\nPale Fronds: Needs fertilizer (feed weakly weekly).\nScale: Brown bumps on stems. Use horticultural oil.",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Maidenhair Fern",
    "scientific": "Adiantum",
    "description": "Delicate, airy fronds on black stems.",
    "image":
        "https://images.unsplash.com/photo-1534069870188-75c6f609e99a?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Shade or bright filtered light.",
      "light_low": "Does well in lower light.",
      "light_avoid": "Direct sun, heat, and drafts.",
      "water_step1": "Keep consistently moist but not soggy.",
      "water_step2": "Requires high humidity to prevent crisping.",
      "water_step3": "Do not let dry out.",
      "water_frequency": "Check daily; water every 2-3 days.",
      "soil_type": "Rich, organic, well-drained soil.",
      "pot_type": "Terrarium, humidity tray, or bathroom plant.",
      "maintenance_cleaning": "Gently remove dead brown fronds.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back old dead stems at the base.",
      "troubleshooting":
          "Crispy Leaves: The #1 issue. Dry air or missed watering. Increase humidity.\nBrown Tips: Hard water or chemical sensitivity. Use rain or distilled water.\nRot: Sitting in water prevents oxygen to roots.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Staghorn Fern",
    "scientific": "Platycerium",
    "description": "Epiphytic fern resembling antlers.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Bright indirect light.",
      "light_low": "Survives but grows very slowly.",
      "light_avoid": "Direct sun burns the leaves.",
      "water_step1": "Soak the root ball/board in water for 15 minutes.",
      "water_step2": "Mist the fronds regularly.",
      "water_step3": "Let it dry slightly between waterings.",
      "water_frequency": "Weekly soaking.",
      "soil_type": "Epiphytic mix: Sphagnum moss and bark (mounted on wood).",
      "pot_type": "Mounted on a board or in a slat basket.",
      "maintenance_cleaning": "Dust leaves with a damp cloth or air.",
      "maintenance_support": "Needs to be mounted or secured.",
      "maintenance_pruning":
          "Do NOT remove the brown shield fronds at the base; they support the plant.",
      "troubleshooting":
          "Black Spots at Base: Overwatering rot. Allow to dry longer.\nWilting: Needs a soak.\nScale: Small brown bumps. Wipe off manually with alcohol.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Bird's Nest Fern",
    "scientific": "Asplenium nidus",
    "description": "Rosette of undivided wavy fronds.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Medium indirect light.",
      "light_low": "Tolerates lower light well.",
      "light_avoid": "Direct sun causes scorching.",
      "water_step1": "Water around the perimeter of the pot.",
      "water_step2":
          "Avoid pouring water directly into the center 'nest' (causes rot).",
      "water_step3": "Keep soil lightly moist.",
      "water_frequency": "Weekly.",
      "soil_type": "Peaty, porous, well-drained soil.",
      "pot_type": "Standard pot.",
      "maintenance_cleaning": "Wipe dust from the large glossy leaves.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove old yellow lower leaves as they age.",
      "troubleshooting":
          "Crown Rot: Watering into the center rosette. Always water soil!\nYellow Leaves: Too much sun or aging leaves.\nBrown Edges: Dry air. Increase humidity.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Japanese Painted Fern",
    "scientific": "Athyrium niponicum",
    "description": "Silver, red, and green fronds; colorful shade plant.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Partial to full shade. Bright light brings out the silver/burgundy colors.",
      "light_low": "Good in shade.",
      "light_avoid": "Hot afternoon sun.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Mulch to retain moisture.",
      "water_step3": "Do not let it dry out completely.",
      "water_frequency": "Weekly.",
      "soil_type": "Humus-rich, well-drained soil.",
      "pot_type": "Shade border or container.",
      "maintenance_cleaning": "Clean up dead fronds in late autumn or spring.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Cut back old fronds in early spring.",
      "troubleshooting":
          "Scorch: Brown leaves from sun exposure.\nRot: Wet feet in heavy clay; improve drainage.\nFade: Deep shade may turn it more green than silver.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Ostrich Fern",
    "scientific": "Matteuccia struthiopteris",
    "description": "Large, vase-shaped fern; edible fiddleheads.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Shade to part shade.",
      "light_low": "Thrives in shade.",
      "light_avoid": "Wind and hot sun.",
      "water_step1": "Keep constantly moist.",
      "water_step2": "Loves wet soil and spreads aggressively in it.",
      "water_step3": "Water frequently.",
      "water_frequency": "Weekly; more often if soil is not boggy.",
      "soil_type": "Moist, rich soil.",
      "pot_type": "Woodland garden or naturalized area.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Clean up winter-damaged fronds in spring.",
      "troubleshooting":
          "Browning: Drought stress. Water immediately.\nScorched: Sun or wind damage.\nSpreading: Runners spread fast; dig them out to contain.",
      "warning_note":
          "Fiddleheads are edible ONLY if cooked properly; raw can cause stomach upset.",
    },
  },
  {
    "name": "Autumn Fern",
    "scientific": "Dryopteris erythrosora",
    "description": "Coppery-red new fronds; evergreen.",
    "image":
        "https://images.unsplash.com/photo-1520763185298-1b434c919102?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Part shade to shade.",
      "light_low": "Good shade tolerance.",
      "light_avoid": "Hot afternoon sun.",
      "water_step1": "Keep soil moist.",
      "water_step2":
          "Once established, it tolerates dry soil better than most ferns.",
      "water_step3": "Mulch.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, acidic, organic soil.",
      "pot_type": "Shade garden accent.",
      "maintenance_cleaning": "Remove ragged fronds.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Cut back old fronds in late winter before copper new growth appears.",
      "troubleshooting":
          "Bleached Leaves: Too much sun.\nRot: Crown rot in wet clay; plant high.\nSpots: Fungal leaf spot; improve airflow.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Asparagus Fern",
    "scientific": "Asparagus densiflorus",
    "description": "Not a fern; thorny stems with needle-like leaves.",
    "image":
        "https://images.unsplash.com/photo-1459156212016-c812468e2115?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Part sun to shade.",
      "light_low": "Becomes leggy in deep shade.",
      "light_avoid": "Direct hot sun causes yellowing.",
      "water_step1": "Keep moist.",
      "water_step2": "Thick tuberous roots make it somewhat drought tolerant.",
      "water_step3": "Mist occasionally.",
      "water_frequency": "Weekly.",
      "soil_type": "Potting mix or well-drained soil.",
      "pot_type": "Hanging basket or container.",
      "maintenance_cleaning": "Watch out for small thorns on stems.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim back long wandering stems to shape.",
      "troubleshooting":
          "Yellowing: Too much sun or dry soil.\nShedding: Dropping 'needles' usually means dry air or skipped watering.\nMealybug: Look for white cottony masses.",
      "warning_note": "Berries are toxic. Can cause skin irritation.",
    },
  },
  {
    "name": "Holly Fern",
    "scientific": "Cyrtomium falcatum",
    "description": "Glossy, leathery, holly-like fronds; evergreen.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Part shade to shade.",
      "light_low": "Tolerates deep shade well.",
      "light_avoid": "Full sun.",
      "water_step1": "Keep soil moist.",
      "water_step2":
          "Drought tolerant once established (tougher than most ferns).",
      "water_step3": "Good drainage.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, well-drained soil.",
      "pot_type": "Shade border or container.",
      "maintenance_cleaning": "Wipe dust off glossy fronds.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Remove old ragged fronds in spring.",
      "troubleshooting":
          "Crown Rot: Wet, cold soil in winter.\nBrown Spots: Fungal leaf spot; remove affected frond.\nScale: Brown bumps on stems.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Cinnamon Fern",
    "scientific": "Osmundastrum cinnamomeum",
    "description": "Native; cinnamon-colored fertile fronds.",
    "image":
        "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Shade to part shade.",
      "light_low": "Good choice for shady/wet spots.",
      "light_avoid": "Dry soil.",
      "water_step1": "Keep constantly moist.",
      "water_step2": "It is a bog plant and loves water.",
      "water_step3": "Mulch heavily.",
      "water_frequency": "Weekly; do not let dry out.",
      "soil_type": "Acidic, wet, mucky soil.",
      "pot_type": "Rain garden or bog.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Clean up dead fronds in winter.",
      "troubleshooting":
          "Browning: Drought stress; water immediately.\nSlow Growth: Too dry or soil not acidic enough.\nNone: Very tough native plant.",
      "warning_note": "Non-toxic.",
    },
  },
  {
    "name": "Hosta",
    "scientific": "Hosta",
    "description": "Shade queen; diverse foliage foliage colors/sizes.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Partial to full shade. Some varieties (yellow/gold) tolerate more sun.",
      "light_low": "Excellent for deep shade areas where little else grows.",
      "light_avoid":
          "Hot afternoon sun, which scorches and bleaches the leaves.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Mulch heavily to retain moisture and keep roots cool.",
      "water_step3":
          "Water at the base to avoid wetting foliage (prevents disease).",
      "water_frequency": "Weekly; more often in extreme heat.",
      "soil_type": "Rich, organic, well-drained soil.",
      "pot_type": "Garden beds, borders, or large containers.",
      "maintenance_cleaning":
          "Remove flower stalks after blooming if they become unsightly.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Remove yellow or damaged leaves. Cut back to ground after first hard frost.",
      "troubleshooting":
          "Slugs & Snails: The #1 enemy. Use bait or copper tape.\nDeer: Hostas are 'deer candy'. Use repellents or fencing.\nVirus: Hosta Virus X (HVX) causes 'ink bleed' patterns. Destroy infected plants.",
      "warning_note": "Toxic to dogs, cats, and horses if ingested.",
    },
  },
  {
    "name": "Coral Bells",
    "scientific": "Heuchera",
    "description": "Mounding colorful foliage (purple/lime/peach).",
    "image":
        "https://images.unsplash.com/photo-1576019951804-0994541cb83d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Partial shade is ideal for most varieties.",
      "light_low":
          "Tolerates shade, but foliage color may be less vibrant (often turns greener).",
      "light_avoid":
          "Hot, direct afternoon sun, especially in warmer climates.",
      "water_step1": "Keep soil consistently moist but never waterlogged.",
      "water_step2": "Good drainage is essential to prevent root rot.",
      "water_step3": "Mulching helps keeping roots cool.",
      "water_frequency": "Weekly; more often if in pots or during dry spells.",
      "soil_type": "Rich, humus-heavy, well-drained soil.",
      "pot_type": "Edging, groundcover, or container accent.",
      "maintenance_cleaning":
          "Deadhead spent flower spikes to encourage tidier growth.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Remove tattered or winter-damaged leaves in early spring.",
      "troubleshooting":
          "Frost Heaving: Shallow roots can be pushed out of soil in winter. Replant and mulch.\nRot: Wet, heavy clay causes crown rot.\nVine Weevil: Small grubs may eat roots; adults notch leaf edges.",
      "warning_note": "Non-toxic to humans and pets.",
    },
  },
  {
    "name": "Lamb's Ear",
    "scientific": "Stachys byzantina",
    "description": "Fuzzy, silver, soft leaves; sensory plant.",
    "image":
        "https://images.unsplash.com/photo-1516528387618-afa90b13e000?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun. Best color and fuzziness in bright light.",
      "light_low": "Grows leggy and is prone to rot in shade.",
      "light_avoid": "Shady, wet, or highly humid areas where leaves stay wet.",
      "water_step1": "Water well to establish.",
      "water_step2": "Highly drought tolerant once established.",
      "water_step3":
          "Water at the base; avoid getting the fuzzy leaves wet (causes rot).",
      "water_frequency":
          "Weekly until established, then only during severe drought.",
      "soil_type": "Well-drained, even poor or sandy soil.",
      "pot_type": "Edging or sensory garden.",
      "maintenance_cleaning":
          "Remove 'melting' or mushy leaves in high humidity.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Remove the tall, fuzzy flower spikes (many gardeners find them unattractive).",
      "troubleshooting":
          "Melting Out: Leaves turn to mush in high heat/humidity. Improve airflow and drainage.\nFungal Spot: Wet leaves lead to disease.\nSpreading: It spreads via runners; dig out edges to control.",
      "warning_note":
          "Non-toxic. Used in many children's gardens for its soft texture.",
    },
  },
  {
    "name": "Autumn Joy Sedum",
    "scientific": "Hylotelephium",
    "description": "Succulent leaves; flat pink flower heads turn rusty.",
    "image":
        "https://images.unsplash.com/photo-1596720800806-218901de47b2?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Full sun. Essential for strong stems and late-season flowers.",
      "light_low": "Stems become weak and floppy in shade.",
      "light_avoid": "Full shade.",
      "water_step1": "Water to establish.",
      "water_step2": "Very drought tolerant due to succulent leaves.",
      "water_step3": "Do not overwater; sensitive to root rot.",
      "water_frequency": "Every 2 weeks.",
      "soil_type": "Average, well-drained, or even sandy/rocky soil.",
      "pot_type": "Garden beds, rock gardens, or pots.",
      "maintenance_cleaning":
          "Leave the dried flower heads throughout winter for aesthetic interest and bird food.",
      "maintenance_support": "None needed if grown in full sun.",
      "maintenance_pruning":
          "Cut back to the ground in early spring. Can be pinched in June to keep it shorter.",
      "troubleshooting":
          "Flopping: Usually caused by too much shade or overly rich soil. Pinch back in early summer.\nRot: Wet feet causes quick decline.\nAphids: Can cluster on new growth in spring.",
      "warning_note": "Non-toxic to pets and humans.",
    },
  },
  {
    "name": "Pachysandra",
    "scientific": "Pachysandra terminalis",
    "description": "Classic evergreen shade groundcover.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Partial to full shade.",
      "light_low": "Excellent choice for deep shade groundcover.",
      "light_avoid": "Direct sun, which bleaches and yellows the leaves.",
      "water_step1": "Water consistently to establish a thick mat.",
      "water_step2": "Once established, it is surprisingly drought tolerant.",
      "water_step3": "Mulch is helpful to retain moisture.",
      "water_frequency": "Weekly.",
      "soil_type": "Acidic, organic, well-drained soil.",
      "pot_type": "Groundcover under trees or on shady slopes.",
      "maintenance_cleaning":
          "Gently rake off fallen tree leaves in autumn to prevent rot.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Can be mown on a high setting in spring if it looks ragged.",
      "troubleshooting":
          "Leaf Blight: Fungal spots or stem rot in humid conditions. Thin out occasionally.\nYellowing: Usually indicates too much sun.\nScale: Small insects on stems can weaken it.",
      "warning_note": "Toxic to dogs, cats, and horses if eaten.",
    },
  },
  {
    "name": "Sweet Woodruff",
    "scientific": "Galium odoratum",
    "description": "Delicate whorled leaves; white stars; fragrant.",
    "image":
        "https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Partial to full shade.",
      "light_low": "Thrives as a woodland groundcover.",
      "light_avoid": "Direct afternoon sun.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Spreads primarily where soil stays damp.",
      "water_step3":
          "Will go dormant (disappear) during dry summer spells if not watered.",
      "water_frequency": "Weekly.",
      "soil_type": "Moist, humus-rich soil.",
      "pot_type": "Groundcover or shade garden edging.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Can be mown after it finishes blooming in late spring.",
      "troubleshooting":
          "Browning: Caused by summer heat or drought. Water more or wait for fall recovery.\nAggressive Spread: It can be pushy in a perfect environment.\nRust: Look for small spots.",
      "warning_note":
          "Contains coumarin (blood thinner) and has a pleasant hay-like scent when dried.",
    },
  },
  {
    "name": "Ajuga",
    "scientific": "Ajuga reptans",
    "description": "Bugleweed; low scallops; blue spikes.",
    "image":
        "https://images.unsplash.com/photo-1498998754966-9c725b8e82d6?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full sun to full shade. Very versatile.",
      "light_low": "Excellent for dark corners.",
      "light_avoid": "None.",
      "water_step1": "Keep soil consistently moist to encourage rapid spread.",
      "water_step2": "Adaptable once established.",
      "water_step3": "Requires good drainage to prevent rot.",
      "water_frequency": "Weekly.",
      "soil_type": "Average soil. Adaptable.",
      "pot_type": "Groundcover, edging, or container accent.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Mow on a high setting after flowers fade to rejuvenate the foliage.",
      "troubleshooting":
          "Crown Rot: Can happen in very humid or wet areas if drainage is poor.\nInvasive: Spreads via surface runners and can creep into lawns. Use edging.\nMildew: Occasionally affected in very humid conditions.",
      "warning_note": "Non-toxic to pets and humans.",
    },
  },
  {
    "name": "Creeping Jenny",
    "scientific": "Lysimachia nummularia",
    "description": "Bright gold coins; spills over pots.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Partial shade is best for color. Full sun makes it golden; shade makes it lime-green.",
      "light_low": "Turns lime-green or dark green in deep shade.",
      "light_avoid":
          "Hot, dry sun which will scorch and kill the plant quickly.",
      "water_step1": "Keep soil moist at all times.",
      "water_step2":
          "Loves water; can even grow in boggy conditions or rain gardens.",
      "water_step3": "Do not let the roots dry out.",
      "water_frequency": "Weekly; more often in high heat.",
      "soil_type": "Wet or moist soil.",
      "pot_type":
          "The perfect 'spiller' for mixed containers or hanging baskets.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning": "Trim back trailing stems to manage size.",
      "troubleshooting":
          "Scorch: Sun combined with dry soil turns leaves brown and crispy.\nReverting: Green stems may appear on gold varieties; trim them out.\nInvasive: Very aggressive in garden beds; will spread into lawns and other plants.",
      "warning_note": "Non-toxic to pets.",
    },
  },
  {
    "name": "Daphne",
    "scientific": "Daphne",
    "description": "Fragrant, early spring flowers; evergreen or deciduous.",
    "image":
        "https://images.unsplash.com/photo-1512413914633-b5043f4041ea?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Partial shade or dappled sunlight.",
      "light_low": "Tolerates shade, but flowering is reduced.",
      "light_avoid": "Full sun (causes scorching) and extremely dry soil.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2":
          "Perfect drainage is CRITICAL; it rots easily if soggy but hates being dry.",
      "water_step3": "Mulch root zone to keep them cool.",
      "water_frequency": "Weekly.",
      "soil_type": "Humus-rich, neutral to slightly alkaline soil.",
      "pot_type": "Specimen shrub planted near paths to enjoy fragrance.",
      "maintenance_cleaning": "None.",
      "maintenance_support": "None.",
      "maintenance_pruning":
          "Minimal pruning needed; only after blooming if necessary.",
      "troubleshooting":
          "Sudden Death: 'Daphne Death' is a known issue, often due to root rot or poor soil. Plant high.\nVirus: Mottled or streaked leaves. No cure.\nFussy: Does not like root disturbance; don't move it once planted.",
      "warning_note": "All parts of the plant are HIGHLY TOXIC if ingested.",
    },
  },
  {
    "name": "English Ivy",
    "scientific": "Hedera helix",
    "description": "Classic evergreen vine; very aggressive.",
    "image":
        "https://images.unsplash.com/photo-1542273917363-3b1817f69a2d?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal": "Full shade to partial shade.",
      "light_low": "Excellent for dark areas.",
      "light_avoid": "Hot afternoon sun and winter wind.",
      "water_step1": "Water well to establish.",
      "water_step2": "Extremely drought tolerant once established.",
      "water_step3": "Adaptable to most conditions.",
      "water_frequency": "Weekly until established.",
      "soil_type": "Any soil.",
      "pot_type": "Container, groundcover, or wall cover (Avoid trees).",
      "maintenance_cleaning": "None.",
      "maintenance_support": "Self-clinging via aerial roots.",
      "maintenance_pruning":
          "Trim frequently to keep it in check; can become very invasive.",
      "troubleshooting":
          "Spider Mites: Look for tiny webs in dry, warm conditions.\nBacterial Leaf Spot: Dark spots on leaves; remove affected foliage.\nEscaped: Do NOT let it climb live trees, as it eventually adds too much weight and chokes them.",
      "warning_note":
          "Toxic to people and pets if ingested. Sap can cause skin irritation.",
    },
  },
  {
    "name": "Clematis",
    "scientific": "Clematis",
    "description": "Queen of vines; showy flowers.",
    "image":
        "https://images.unsplash.com/photo-1558293842-c0fd3db84100?q=80&w=600&auto=format&fit=crop",
    "status": PlantStatus.healthy,
    "category": "Grasses & Ferns",
    "details": {
      "light_ideal":
          "Full sun for the top (flowers); shade for the roots ('Head in sun, feet in shade').",
      "light_low": "Grows thinly and produces few flowers in shade.",
      "light_avoid": "Hot, baked soil at the roots.",
      "water_step1": "Keep soil consistently moist.",
      "water_step2": "Mulch roots heavily (3-4 inches) to keep them cool.",
      "water_step3": "Water deeply during dry spells.",
      "water_frequency": "Weekly.",
      "soil_type": "Rich, fertile, neutral to slightly alkaline soil.",
      "pot_type": "Trellis, arbor, or fence.",
      "maintenance_cleaning":
          "Deadhead spent flowers unless you want the decorative seed heads.",
      "maintenance_support":
          "Essential. Needs a trellis or wire for tendrils to wrap around.",
      "maintenance_pruning":
          "Crucial: Determine if yours is Group 1, 2, or 3 for pruning timing and intensity.",
      "troubleshooting":
          "Clematis Wilt: Fungus causes sudden stem collapse. Cut to ground immediately; it often returns from roots.\nYellow Leaves: Often an iron deficiency in alkaline soil. Feed as needed.\nHoles: Earwigs can chew the petals.",
      "warning_note": "Toxic to cats, dogs, and horses.",
    },
  },
];
