import 'package:fitness_app/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> title = [
    'Meal Time',
    'Jogging',
    'Yoga Session',
    'Aerobics',
    'Full Body Workout',
    'Daily Push Up'
  ];
  List<String> title2 = [
    'Full Body Workout',
    'Daily Push Up',
  ];
  List<String> subtitle = [
    'Time to push your body',
    'Time to hit the gym',
    'It\'s time for aerobics',
    'Time to eat your breakfast',
    'Daily Push Up',
    'Get ready for you Yoga routine ',
  ];
  List<String> subtitle2 = [
    'Daily Push Up',
    'Get ready for you Yoga routine ',
  ];
  List<String> time = [
    'now',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
    '10:00 AM',
  ];
  List<String> time2 = [
    '10:00 AM',
    '10:00 AM',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width / 20),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/p22.jpg'),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: Column(
              children: [
                //!Today
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: title.length - 2,
                  itemBuilder: (_, int index) {
                    return TrainerTile(
                      title: title[index],
                      height: height,
                      subtitle: subtitle[index],
                      time: time[index],
                      width: width,
                    );
                  },
                ),

                //!This week
                SizedBox(height: height * 0.02),
                SizedBox(height: height * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'This Weeks',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: title2.length,
                  itemBuilder: (_, int index) {
                    return TrainerTile(
                      title: title2[index],
                      height: height,
                      subtitle: subtitle2[index],
                      time: time2[index],
                      width: width,
                    );
                  },
                )
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
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);

  final double height;
  final double width;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.1,
      width: width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                time,
                style: const TextStyle(
                  color: AppColors.magenta,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Container(
            height: 1,
            width: width,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
