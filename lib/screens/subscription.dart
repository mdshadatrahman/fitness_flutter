import 'package:fitness_app/screens/payment_gateway.dart';
import 'package:fitness_app/screens/price.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

class subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.t2,
          ),
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 4,
                width: width / 1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/price.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Upgrade to Premium',
                style: TextStyle(
                    color: AppColors.t2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const Center(
              child: Text(
                'Unlimited swipes, Likes, Matches and so more',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // Get.to(() => payment(),
                      //     duration: const Duration(
                      //         milliseconds:
                      //             400), //duration of transitions, default 1 sec
                      //     transition: Transition.zoom);
                      // Navigator.push(
                      //   context,
                      //   PageTransition(
                      //     type: PageTransitionType.rightToLeftWithFade,
                      //     child: payment(),
                      //   ),
                      // );
                    },
                    child: Container(
                      height: height / 6,
                      width: width / 4.2,
                      decoration: BoxDecoration(
                        color: AppColors.grey3,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: height / 22,
                            decoration: const BoxDecoration(
                              color: AppColors.t2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                            ),
                            child: const Center(
                              child: Text(
                                'Save 66 %',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Text(
                            "12",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          const Text(
                            "months",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          const Text(
                            "6.00/mt",
                            style: TextStyle(
                              color: AppColors.t2,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: height / 6,
                      width: width / 4.2,
                      decoration: BoxDecoration(
                        color: AppColors.grey3,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: height / 22,
                            decoration: const BoxDecoration(
                              color: AppColors.t2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                            ),
                            child: const Center(
                              child: Text(
                                'Save 66 %',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Text(
                            "12",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          const Text(
                            "months",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          const Text(
                            "6.00/mt",
                            style: TextStyle(
                                color: AppColors.t2,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: height / 6,
                      width: width / 4.2,
                      decoration: BoxDecoration(
                        color: AppColors.grey3,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: height / 22,
                            decoration: const BoxDecoration(
                              color: AppColors.t2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                            ),
                            child: const Center(
                              child: Text(
                                'Save 66 %',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Text(
                            "12",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          const Text(
                            "months",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          const Text(
                            "6.00/mt",
                            style: TextStyle(
                                color: AppColors.t2,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            const Center(
              child: Text(
                'When will I be billed?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Yout Account will be billed at the end of your trial period (if applicable)or on confirmation of your subscription.',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: const PaymentGateway2(),
                    ),
                  );
                },
                child: Container(
                  height: height / 15,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    color: AppColors.t2,
                    borderRadius: BorderRadiusDirectional.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
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
}
