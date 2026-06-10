import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState
    extends State<EditProfileScreen> {

  File? image;

  final nameController =
      TextEditingController();

  final locationController =
      TextEditingController();

  final phoneController =
      TextEditingController();

  Future pickImage() async {

    final picked =
        await ImagePicker()
            .pickImage(
      source: ImageSource.gallery,
    );

    if (picked != null) {

      setState(() {
        image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Edit Profile"),
      ),

      body: Padding(
        padding:
            const EdgeInsets.all(20),

        child: Column(
          children: [

            GestureDetector(

              onTap: pickImage,

              child: CircleAvatar(
                radius: 60,

                backgroundColor:
                    Colors.orange.shade100,

                backgroundImage:
                    image != null
                        ? FileImage(image!)
                        : null,

                child: image == null
                    ? const Icon(
                        Icons.camera_alt,
                        size: 40,
                        color:
                            Colors.orange,
                      )
                    : null,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              controller:
                  nameController,

              decoration:
                  const InputDecoration(
                labelText: "Name",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  locationController,

              decoration:
                  const InputDecoration(
                labelText:
                    "Location",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  phoneController,

              decoration:
                  const InputDecoration(
                labelText: "Phone",
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.orange,
                ),

                onPressed: () {

                  ScaffoldMessenger.of(
                          context)
                      .showSnackBar(

                    const SnackBar(
                      content: Text(
                        "Profile Updated ✅",
                      ),
                    ),
                  );

                  Navigator.pop(
                      context);
                },

                child: const Text(
                  "Save Profile",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}