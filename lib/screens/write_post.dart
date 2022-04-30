import 'dart:io';

import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class write_psot extends StatefulWidget {
  @override
  _write_psotState createState() => _write_psotState();
}

class _write_psotState extends State<write_psot> {
  ImagePicker picker = ImagePicker();
  var _image, Image2, image3;

  Future takephoto_camera() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = File(image!.path);
    });
    //return image;
  }

  Future takephoto_gallary() async {
    XFile? image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image!.path);
    });
    //return image;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'New Post',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        actions: const [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: CircleAvatar(
          //     radius: 24,
          //     backgroundImage: AssetImage('assets/images/t1.jpeg'),
          //   ),
          // ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: height / 17,
            width: width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.t2,
            ),
            child: const Center(
              child: Text(
                "Publish",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack(
            //   clipBehavior: Clip.none,
            //   children: [
            //     _image != null
            //         ? Container(
            //             height: height / 8,
            //             width: width,
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image: FileImage(_image), fit: BoxFit.cover),
            //             ),
            //           )
            //         : Container(),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: (context),
                        builder: (builder) => bottomSheetProfileEdit(),
                      );
                    },
                    child: _image != null
                        ? Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: width * 0.27,
                                width: width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: FileImage(_image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: width * 0.235,
                                top: -width * 0.02,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _image = null;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove_circle,
                                    color: AppColors.magenta,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            height: width * 0.27,
                            width: width * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.magenta,
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.image,
                                  color: AppColors.magenta,
                                ),
                              ),
                            ),
                          ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: (context),
                        builder: (builder) => bottomSheetProfileEdit(),
                      );
                    },
                    child: _image != null
                        ? Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: width * 0.27,
                                width: width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: FileImage(_image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: width * 0.235,
                                top: -width * 0.02,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _image = null;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove_circle,
                                    color: AppColors.magenta,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            height: width * 0.27,
                            width: width * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.magenta,
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.video_collection_outlined,
                                  color: AppColors.magenta,
                                ),
                              ),
                            ),
                          ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: (context),
                        builder: (builder) => bottomSheetProfileEdit(),
                      );
                    },
                    child: _image != null
                        ? Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: width * 0.27,
                                width: width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: FileImage(_image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: width * 0.235,
                                top: -width * 0.02,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _image = null;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.remove_circle,
                                    color: AppColors.magenta,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            height: width * 0.27,
                            width: width * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.magenta,
                              ),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.add_box,
                                  color: AppColors.magenta,
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Description",
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLines: 8,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a description",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget bottomSheetProfileEdit() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: deprecated_member_use
              FlatButton.icon(
                icon: const Icon(Icons.camera),
                label: const Text("Camera"),
                onPressed: () {
                  takephoto_camera();
                  // Get.back();
                  Navigator.pop(context);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                icon: const Icon(Icons.image),
                label: const Text("Gallery"),
                onPressed: () {
                  takephoto_gallary();
                  // Get.back();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}




// showModalBottomSheet(
//                     context: (context),
//                     builder: (builder) => bottomSheetProfileEdit(),
//                   );