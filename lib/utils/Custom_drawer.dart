import 'package:fitness_app/screens/AuthScreens/login_screen.dart';
import 'package:fitness_app/screens/LiveStreaming.dart';
import 'package:fitness_app/screens/VideoContent/video_content.dart';
import 'package:fitness_app/screens/bmi_calc.dart';
import 'package:fitness_app/screens/diet_tool.dart';

import 'package:fitness_app/screens/macro_calculator.dart';
import 'package:fitness_app/screens/message_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:fitness_app/screens/social_media.dart';
import 'package:fitness_app/screens/subscription.dart';
import 'package:fitness_app/screens/training_tool/trainign_tool.dart';

import 'package:fitness_app/utils/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../screens/search.dart';
import '../utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.material,
      child: ListView(
        padding: const EdgeInsets.only(right: 50),
        children: [
          SizedBox(
            height: height / 30,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              )),
          ListTile(
            onTap: () {
              Get.offAll(() => const CustomBottomNavigationBar());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const ProfileScreen());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => video_content(),
                  duration: const Duration(
                      milliseconds:
                          500), //duration of transitions, default 1 sec
                  transition: Transition.leftToRight);
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.video_collection_rounded,
              color: Colors.white,
            ),
            title: const Text(
              "Video Content",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const MessageScreen());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
            title: const Text(
              "Conversation with Trainer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: const Text(
              "Food Measurement",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => macro_calculator(),
                transition: Transition.rightToLeft,
              );
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: const Text(
              "Macro Calculator",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const DietTool());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.no_food,
              color: Colors.white,
            ),
            title: const Text(
              "Diet Tool",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => TrainingTools(),
                duration: const Duration(
                  milliseconds: 500,
                ),
                transition: Transition.rightToLeft,
              );
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.train,
              color: Colors.white,
            ),
            title: const Text(
              "Training Tool",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const BMICalc());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.calculate_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "BMI Calculator",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => search(),
                transition: Transition.rightToLeft,
                duration: const Duration(microseconds: 500),
              );
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.person_search,
              color: Colors.white,
            ),
            title: const Text(
              "Find a trainer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(live_training());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.live_tv,
              color: Colors.white,
            ),
            title: const Text(
              "Live Training",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const SocialMedia());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.social_distance,
              color: Colors.white,
            ),
            title: const Text(
              "Social Page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => subscription());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.money,
              color: Colors.white,
            ),
            title: const Text(
              "Payment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.offAll(() => const LoginScreen());
            },
            horizontalTitleGap: .1,
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
