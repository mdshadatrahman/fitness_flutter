import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AboutTrainer extends StatelessWidget {
  const AboutTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: const Text(
          'About Trainer',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Full Name",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 18,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Silva Roy",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     "Email",
            //     style: TextStyle(
            //       color: AppColors.white,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: height / 18,
            //     width: width,
            //     decoration: BoxDecoration(
            //       color: AppColors.grey,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: TextFormField(
            //         style: const TextStyle(
            //           color: Colors.white,
            //         ),
            //         decoration: const InputDecoration(
            //           border: InputBorder.none,
            //           hintText: "Enter Email",
            //           hintStyle: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Phone Number",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 18,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    enabled: false,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "111 222 333",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Workplace",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 18,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Workplace name",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Special Field",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 18,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "ABS",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //!AGE
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Age",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 18,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    enabled: false,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "24",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //!Certificate
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
                top: height * 0.03,
              ),
              child: const Text(
                "Certificate",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
                top: height * 0.005,
              ),
              child: const Text(
                "official recognization of your skill",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          color: AppColors.magenta,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            Text(
                              'Certificate Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.145,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/certificate.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          color: AppColors.magenta,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            Text(
                              'Certificate Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.145,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/certificate.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //!Award
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
                top: height * 0.03,
              ),
              child: const Text(
                "Awards",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.02,
                top: height * 0.005,
              ),
              child: const Text(
                "that's inspire your achievement",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          color: AppColors.magenta,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            Text(
                              'Award Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.145,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/certificate.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.04,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          color: AppColors.magenta,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            Text(
                              'Award Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.145,
                        width: width * 0.45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/certificate.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.1),
          ],
        ),
      ),
    ));
  }
}
