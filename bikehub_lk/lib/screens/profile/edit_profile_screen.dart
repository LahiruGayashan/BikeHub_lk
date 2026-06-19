import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState
    extends State<EditProfileScreen> {

File? image;

  bool _isPickingImage = false;

  final nameController =
      TextEditingController();

  final locationController =
      TextEditingController();

  final phoneController =
      TextEditingController();

@override
  void initState() {
    super.initState();
    loadProfile();
  }

Future<void> loadProfile() async {
    final uid =
        FirebaseAuth.instance.currentUser!.uid;

    final doc =
        await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .get();

    if (!doc.exists) return;

    final data = doc.data()!;

    setState(() {
      nameController.text =
          data['name'] ?? '';

      phoneController.text =
          data['phone'] ?? '';

      locationController.text =
          data['location'] ?? '';
    });
  }

  Future<void> pickImage() async {
    if (_isPickingImage) return;

    _isPickingImage = true;

    try {
      final picked =
          await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (picked != null) {
        setState(() {
          image = File(picked.path);
        });
      }
    } finally {
      _isPickingImage = false;
    }
  }

  Future<String?> uploadToCloudinary() async {
  if (image == null) return null;

  if (!await image!.exists()) {
    debugPrint("Image file no longer exists");
    return null;
  }

  const cloudName = "dxgy1bqza";
  const uploadPreset = "profile";

  try {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse(
        'https://api.cloudinary.com/v1_1/$cloudName/image/upload',
      ),
    );

    request.fields['upload_preset'] =
        uploadPreset;

    request.files.add(
      await http.MultipartFile.fromPath(
        'file',
        image!.path,
      ),
    );

    final response =
        await request.send();

    final responseBody =
        await response.stream.bytesToString();

    debugPrint(responseBody);

    if (response.statusCode == 200) {
      final data =
          jsonDecode(responseBody);

      return data['secure_url'];
    }
  } catch (e) {
    debugPrint(
      "Cloudinary Upload Error: $e",
    );
  }

  return null;
}

  Future<void> saveProfile() async {

    final uid =
        FirebaseAuth.instance.currentUser!.uid;

    String? imageUrl;

    if (image != null) {
      imageUrl =
          await uploadToCloudinary();

      print(imageUrl);
    }

    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .update({

      'name':
          nameController.text.trim(),

      'phone':
          phoneController.text.trim(),

      'location':
          locationController.text.trim(),

      if (imageUrl != null)
        'imageUrl': imageUrl,
    });

    if (!mounted) return;

    ScaffoldMessenger.of(context)
        .showSnackBar(

      const SnackBar(
        content: Text(
          "Profile Updated ✅",
        ),
      ),
    );

    Navigator.pop(context);
  }

  @override
  void dispose() {
    nameController.dispose();
    locationController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
        ),
      ),

      body: SingleChildScrollView(
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
                        color: Colors.orange,
                        size: 40,
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
                border:
                    OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  locationController,
              decoration:
                  const InputDecoration(
                labelText: "Location",
                border:
                    OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller:
                  phoneController,
              decoration:
                  const InputDecoration(
                labelText: "Phone",
                border:
                    OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed:
                    saveProfile,

                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.orange,
                ),

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
