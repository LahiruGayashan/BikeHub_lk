import 'package:flutter/material.dart';

class AddBikeScreen extends StatefulWidget {
  const AddBikeScreen({super.key});

  @override
  State<AddBikeScreen> createState() => _AddBikeScreenState();
}

class _AddBikeScreenState extends State<AddBikeScreen> {
  final titleController = TextEditingController();

  final priceController = TextEditingController();

  final yearController = TextEditingController();

  final ccController = TextEditingController();

  final descriptionController = TextEditingController();

  String? selectedDistrict;

  final districts = [
    "Ampara",
    "Anuradhapura",
    "Badulla",
    "Batticaloa",
    "Colombo",
    "Galle",
    "Gampaha",
    "Hambantota",
    "Jaffna",
    "Kalutara",
    "Kandy",
    "Kegalle",
    "Kilinochchi",
    "Kurunegala",
    "Mannar",
    "Matale",
    "Matara",
    "Monaragala",
    "Mullaitivu",
    "Nuwara Eliya",
    "Polonnaruwa",
    "Puttalam",
    "Ratnapura",
    "Trincomalee",
    "Vavuniya",
  ];
  String? selectedBrand;
  String? selectedModel;

  final Map<String, Map<String, int>> bikeBrands = {
    "Honda": {
      "CBR 150R": 149,
      "CBR 250R": 249,
      "Hornet 160R": 162,
      "CB Shine": 125,
      "CB Unicorn": 160,
      "CB Trigger": 150,
      "XR 150L": 149,
      "Dio": 110,
      "Activa": 110,
      "PCX 160": 157,
      "CB190R": 184,
    },

    "Yamaha": {
      "R15 V2": 149,
      "R15 V3": 155,
      "R15 V4": 155,
      "MT-15": 155,
      "FZ": 149,
      "FZ-S": 149,
      "FZ-S V3": 149,
      "FZ-X": 149,
      "Fazer": 149,
      "Ray ZR": 125,
      "Ray ZR Street Rally": 125,
      "NMAX": 155,
      "Aerox 155": 155,
      "XSR 155": 155,
    },

    "Suzuki": {
      "Gixxer": 155,
      "Gixxer SF": 155,
      "Gixxer 250": 249,
      "Gixxer SF 250": 249,
      "GSX-R150": 147,
      "GSX-S150": 147,
      "Intruder": 155,
      "Burgman Street": 125,
      "Access 125": 125,
    },

    "Kawasaki": {
      "Ninja 125": 125,
      "Ninja 250": 249,
      "Ninja 300": 296,
      "Ninja 400": 399,
      "Ninja 650": 649,
      "Ninja ZX-6R": 636,
      "Ninja ZX-10R": 998,
      "Z250": 249,
      "Z400": 399,
      "Z650": 649,
      "Z900": 948,
      "Versys 650": 649,
      "KLX 150": 144,
    },

    "BMW Motorrad": {
      "G310R": 313,
      "G310GS": 313,
      "F750GS": 853,
      "F850GS": 853,
      "R1250GS": 1254,
      "S1000RR": 999,
      "S1000R": 999,
    },

    "KTM": {
      "Duke 125": 125,
      "Duke 200": 199,
      "Duke 250": 248,
      "Duke 390": 373,
      "RC 125": 125,
      "RC 200": 199,
      "RC 390": 373,
      "Adventure 250": 248,
      "Adventure 390": 373,
    },

    "Bajaj Auto": {
      "Pulsar 125": 124,
      "Pulsar 150": 149,
      "Pulsar 180": 178,
      "Pulsar NS160": 160,
      "Pulsar NS200": 199,
      "Pulsar RS200": 199,
      "Dominar 250": 248,
      "Dominar 400": 373,
      "Avenger Street 160": 160,
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Bike Listing")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, size: 50, color: Colors.grey),

                  SizedBox(height: 10),

                  Text("Add Bike Photo"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Bike Title",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedBrand,

              decoration: const InputDecoration(
                labelText: "Brand",
                border: OutlineInputBorder(),
              ),

              items: bikeBrands.keys.map((brand) {
                return DropdownMenuItem(value: brand, child: Text(brand));
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedBrand = value;
                  selectedModel = null;
                });
              },
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              value: selectedModel,

              decoration: const InputDecoration(
                labelText: "Model",
                border: OutlineInputBorder(),
              ),

              items: selectedBrand == null
                  ? []
                  : bikeBrands[selectedBrand]!.keys.map((model) {
                      return DropdownMenuItem<String>(
                        value: model,
                        child: Text(model),
                      );
                    }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedModel = value;

                  if (selectedBrand != null && value != null) {
                    ccController.text = bikeBrands[selectedBrand]![value]
                        .toString();
                  }
                });
              },
            ),

            const SizedBox(height: 20),
            TextField(
              controller: yearController,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Year",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: ccController,
              readOnly: true,

              decoration: const InputDecoration(
                labelText: "Engine Capacity (CC)",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Price (LKR)",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              value: selectedDistrict,

              decoration: const InputDecoration(
                labelText: "District",
                border: OutlineInputBorder(),
              ),

              items: districts.map((district) {
                return DropdownMenuItem(value: district, child: Text(district));
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedDistrict = value;
                });
              },
            ),

            const SizedBox(height: 20),

            TextField(
              controller: descriptionController,

              maxLines: 5,

              decoration: const InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),

                onPressed: () {},

                child: const Text(
                  "Post Listing",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
