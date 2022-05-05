import 'package:fitness_app/screens/live_video.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'LiveStreaming.dart';

class LiveNow extends StatefulWidget {
  const LiveNow({Key? key}) : super(key: key);

  @override
  State<LiveNow> createState() => _LiveNowState();
}

class _LiveNowState extends State<LiveNow> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          centerTitle: true,
          title: const Text('Live Now'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TrainerTile(
                  height: height,
                  width: width,
                  name: 'Hilary Ouse',
                  isOnline: true,
                ),
                SizedBox(height: height * 0.02),
                TrainerTile(
                  height: height,
                  width: width,
                  name: 'Hilary Ouse',
                  isOnline: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrainerTile extends StatelessWidget {
  const TrainerTile({
    Key? key,
    required this.height,
    required this.width,
    required this.name,
    this.isOnline = false,
  }) : super(key: key);

  final double height;
  final double width;
  final String name;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            isOnline
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LiveVideo(),
                    ),
                  )
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => live_training(),
                    ),
                  );
          },
          child: Container(
            height: height * 0.1,
            width: width,
            decoration: BoxDecoration(
              color: const Color(0xff4D4D4D),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/p22.jpg',
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hilary Ouse',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            'About trainer',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        isOnline
            ? Positioned(
                top: height * 0.065,
                left: width * 0.13,
                child: const CircleAvatar(
                  backgroundColor: Color(0xff42FF00),
                  radius: 4,
                ),
              )
            : Container(),
      ],
    );
  
  
  }
}
