import 'package:fitness_app/screens/chat_screen.dart';
import 'package:fitness_app/screens/training_tool/equpment_submenu.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../message_screen.dart';

class BodyFocusSubMenu extends StatefulWidget {
  const BodyFocusSubMenu({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _BodyFocusSubMenuState createState() => _BodyFocusSubMenuState();
}

class _BodyFocusSubMenuState extends State<BodyFocusSubMenu> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: AppColors.background,
        //Removed drawer because it is submenu
        // drawer: CustomDrawer(height: height, width: width),
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: InkWell(
              onTap: () {
                //Removed drawer because it is submenu
                // _key.currentState!.openDrawer();
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: AppColors.background,
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const MessageScreen(),
                  transition: Transition.rightToLeft,
                );
              },
              child: SvgPicture.asset("assets/images/chat.svg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.material),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //!Container with background image
              SizedBox(height: height * 0.07),
              Padding(
                padding: EdgeInsets.only(left: width / 15),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const EquipmentSubMenu(title: 'Build Chest'),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/chest1.svg'),
                          SizedBox(width: width * 0.05),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Build wider chest',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              const Text(
                                '13 min • Intermediete',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const EquipmentSubMenu(title: 'Build Shoulder'),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/shoulder1.svg'),
                          SizedBox(width: width * 0.05),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Build wider shoulders',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              const Text(
                                '13 min • Intermediete',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const EquipmentSubMenu(title: 'Build Arm'),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/arm1.svg'),
                          SizedBox(width: width * 0.05),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Build wider Arm',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              const Text(
                                '13 min • Intermediete',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const EquipmentSubMenu(title: 'Build Abs'),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/abs1.svg'),
                          SizedBox(width: width * 0.05),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Build More Pacs',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              const Text(
                                '13 min • Intermediete',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
