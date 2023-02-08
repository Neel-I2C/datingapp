import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class AddPhotosController extends GetxController {
  var selected = false.obs;
  ImagePicker picker = ImagePicker();

  List selectedImage = [];

  RxBool on = false.obs;
  RxBool on1 = false.obs;
  RxBool on2 = false.obs;

  selectImageSource() {
    Get.defaultDialog(
      title: "Choose Image",
      content: Column(
        children: [
          ListTile(
            onTap: () {
              Get.back();
              pickImage(imageSource: ImageSource.camera);
            },
            leading: Icon(Icons.camera_alt),
            title: Text("Select From Camera"),
          ),
          ListTile(
            onTap: () {
              Get.back();
              pickImage(imageSource: ImageSource.gallery);
            },
            leading: Icon(Icons.photo_camera_back_sharp),
            title: Text("Select From Gallery"),
          ),
        ],
      ),
    );
  }

  pickImage({
    var index,
    var imageSource,
  }) async {
    try {
      XFile? image = await picker.pickImage(source: imageSource);
      if (image != null) {
        selectedImage.add(image.path);
      }
    } catch (e) {
      log("PICK IMAGE ERROR :: $e");
    }
  }
}
