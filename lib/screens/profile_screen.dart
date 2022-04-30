import 'package:fitness_app/screens/coach_list.dart';
import 'package:fitness_app/screens/posts.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'comments.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isFav = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: const Color(0xff1E1E1E),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: const Color(0xff4D4D4D),
        floatingActionButton: InkWell(
          onTap: () {
            // Get.to(
            //   () => edit_profile(),
            //   duration: const Duration(milliseconds: 500),
            //   transition: Transition.rightToLeft,
            // );
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                child: edit_profile(),
              ),
            );
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
                    image: AssetImage('assets/images/bg2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    SizedBox(height: height * 0.04),

                    //!Profile
                    SizedBox(height: height * 0.07),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/images/p23.jpg'),
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
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Get.to(
                                //   () => const CoachList(),
                                //   transition: Transition.rightToLeft,
                                // );
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    child: const CoachList(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.list_alt,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: width * 0.02),
                                  const Text(
                                    'Coach list',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Following',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.02),
                                    const Text(
                                      '(100)',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.06),
                            Container(
                              height: height * 0.05,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Followers',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.02),
                                    const Text(
                                      '(1k+)',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                    //!Tabbar
                    SizedBox(height: height * 0.04),

                    TabBar(
                      controller: _tabController,
                      isScrollable: false,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 4.0,
                          color: AppColors.magenta,
                        ),
                      ),
                      tabs: [
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Timeline',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'About',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: const Center(
                            child: Text(
                              'Session',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),

                    SizedBox(
                      height: height, //?There may be a bug here
                      //!Tabbar view
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          //!timeline
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.03),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/p22.jpg'),
                                            ),
                                            SizedBox(width: width * 0.05),
                                            const Text(
                                              'Shahriar Islam',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '3 hours ago',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff706767),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.03),
                                    //!image
                                    GestureDetector(
                                      onTap: () {
                                        // Get.to(
                                        //   () => const PostScreen(),
                                        //   transition: Transition.rightToLeft,
                                        // );
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType
                                                .rightToLeftWithFade,
                                            child: const PostScreen(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: width,
                                        height: height * 0.35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/g1.jpg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //!like, commetn
                                    SizedBox(height: height * 0.03),
                                    Row(
                                      children: [
                                        //!Like
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isFav = !isFav;
                                            });
                                          },
                                          child: Icon(
                                            isFav
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: isFav
                                                ? Colors.red
                                                : const Color(0xff898488),
                                          ),
                                        ),
                                        SizedBox(width: width * 0.03),
                                        const Text(
                                          '1.2k',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),

                                        SizedBox(width: width * 0.08),

                                        //!Comment
                                        GestureDetector(
                                          onTap: () {
                                            // Get.to(
                                            //   () => const CommentsScreen(),
                                            //   transition:
                                            //       Transition.rightToLeft,
                                            // );
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeftWithFade,
                                                child: const CommentsScreen(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.mode_comment_outlined,
                                            color: Color(0xff898488),
                                          ),
                                        ),
                                        SizedBox(width: width * 0.03),
                                        const Text(
                                          '43',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),

                                    //!caption
                                    SizedBox(height: height * 0.03),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Shahriar Islam',
                                              style: TextStyle(
                                                color: AppColors.magenta,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: width * 0.03),
                                            const Text(
                                              'I thnk this workout plan of yours is',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'gonna pay off really soon. I can see the shapes : )',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: height * 0.02),
                                      ],
                                    ),
                                    Container(
                                      height: height * 0.06,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                      child: const TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff898488)),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff898488)),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff898488)),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff898488)),
                                          ),
                                          hintText: 'To say with you...',
                                          hintStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.chat,
                                            color: Color(0xff898488),
                                          ),
                                          suffixIcon: Icon(
                                            Icons.send,
                                            color: AppColors.magenta,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //!About
                          Center(
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width / 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.05),
                                      const Text(
                                        'Mr. Jonshon',
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
                                        Icons.mail_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.05),
                                      const Text(
                                        'mamunvai@gmail.com',
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
                                        Icons.local_phone_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.05),
                                      const Text(
                                        '666 555 444',
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
                                        Icons.cake_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.05),
                                      const Text(
                                        '24',
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
                                        Icons.male,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * 0.05),
                                      const Text(
                                        'Male',
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
                          ),

                          //!Session
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.02),
                                TrainerTile(
                                  height: height,
                                  width: width,
                                  workoutName: 'ABS Workout',
                                  date: '01/01/22',
                                  time: '10:00 AM - 11:00 AM 1h',
                                ),
                                SizedBox(height: height * 0.02),
                                TrainerTile(
                                  isDone: true,
                                  height: height,
                                  width: width,
                                  workoutName: 'Chest Workout',
                                  time: '10:00 AM - 11:00 AM 1h',
                                  date: '01/01/22',
                                ),
                                SizedBox(height: height * 0.02),
                                TrainerTile(
                                  height: height,
                                  width: width,
                                  workoutName: 'Leg Workout',
                                  date: '01/01/22',
                                  time: '10:00 AM - 11:00 AM 1h',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //!Options
                    SizedBox(height: height * 0.17),
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

class TrainerTile extends StatelessWidget {
  const TrainerTile({
    Key? key,
    required this.height,
    required this.width,
    required this.workoutName,
    this.isDone = false,
    required this.date,
    required this.time,
  }) : super(key: key);

  final double height;
  final double width;
  final String workoutName;
  final bool isDone;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Text(
                      workoutName,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: isDone
                      ? const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )
                      : const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                ),
                isDone
                    ? const Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        time,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
