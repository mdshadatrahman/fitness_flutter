import 'dart:io';
import 'package:fitness_app/screens/bottom_nav/notification.dart';
import 'package:fitness_app/screens/bottom_nav/profile.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:get/get.dart';

import 'bottom_nav/neutrition_part.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final List<Widget> screens = [
    const HomeScreen(),
    neutrition_part(),
    Notifications(),
    profile()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  int current_tab = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        current_tab == 1
            ? Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: const MainHome(),
                ),
              )
            : current_tab == 2
                ? Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: const MainHome(),
                    ),
                  )
                : current_tab == 3
                    ? Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          child: const MainHome(),
                        ),
                      )
                    : showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Confirm Exit"),
                            content:
                                const Text("Are you sure you want to exit?"),
                            actions: <Widget>[
                              TextButton(
                                child: const Text("YES"),
                                onPressed: () {
                                  exit(0);
                                },
                              ),
                              TextButton(
                                child: const Text("NO"),
                                onPressed: () {
                                  // Get.back();
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        },
                      );
        return true;
      },
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 5,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 14,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      current_tab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 0
                          ? SvgPicture.asset("assets/images/icon1.svg")
                          : SvgPicture.asset("assets/images/icon2.svg"),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 0
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = neutrition_part();
                      current_tab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 1
                          ? SvgPicture.asset("assets/images/icon3.svg")
                          : SvgPicture.asset("assets/images/icon9.svg"),
                      Text(
                        "Nutritionist chart",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 1
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = Notifications();
                      current_tab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 2
                          ? SvgPicture.asset("assets/images/icon6.svg")
                          : SvgPicture.asset("assets/images/icon4.svg"),
                      Text(
                        "Fees",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 2
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {
                    setState(() {
                      currentScreen = profile();
                      current_tab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      current_tab == 3
                          ? SvgPicture.asset("assets/images/icon8.svg")
                          : SvgPicture.asset("assets/images/icon7.svg"),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: current_tab == 3
                              ? AppColors.material
                              : AppColors.textcolor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
