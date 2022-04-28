import 'package:fitness_app/screens/session_list.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: InkWell(
          onTap: () {
            Get.to(() => edit_profile(),
                duration: const Duration(
                    milliseconds: 500), //duration of transitions, default 1 sec
                transition: Transition.leftToRight);
          },
          child: Container(
            width: width / 5,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.t2,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: width / 20),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: width * 0.3),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),

                    //!Profile image
                    SizedBox(height: height * 0.17),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/p23.jpg'),
                    ),
                    SizedBox(height: height * 0.02),
                    const Text(
                      'Mr. Jonshon',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: height * 0.002),
                    const Text(
                      '@mjonson',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    //!Options
                    SizedBox(height: height * 0.17),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width / 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.1),
                              const Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.1),
                              const Text(
                                'Account Settings',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.payment,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.1),
                              const Text(
                                'Payment Method',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          InkWell(
                            onTap: () {
                              Get.to(() => sesion_list());
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.payment,
                                  color: Colors.white,
                                ),
                                SizedBox(width: width * 0.1),
                                const Text(
                                  'Session List',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.logout_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(width: width * 0.1),
                              const Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
