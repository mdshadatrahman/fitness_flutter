import 'package:fitness_app/screens/LiveStreaming.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ViewAsProfileScreen extends StatefulWidget {
  const ViewAsProfileScreen({Key? key}) : super(key: key);

  @override
  State<ViewAsProfileScreen> createState() => _ViewAsProfileScreenState();
}

class _ViewAsProfileScreenState extends State<ViewAsProfileScreen>
    with SingleTickerProviderStateMixin {
  bool isFollowing = false;
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
                    SizedBox(height: height * 0.08),

                    //!Profile
                    SizedBox(height: height * 0.07),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                      ],
                    ),

                    //!FOllow button
                    SizedBox(height: height * 0.08),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFollowing = !isFollowing;
                            });
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: isFollowing
                                  ? AppColors.magenta
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: isFollowing
                                    ? Colors.grey
                                    : AppColors.magenta,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    //!Details
                    SizedBox(height: height * 0.04),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Mr. Jonshon',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.mail,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'mr.jonshon@gmail.com',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.male,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                '111 222 333',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                '24',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
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

class TrainerTile extends StatelessWidget {
  const TrainerTile({
    Key? key,
    required this.height,
    required this.width,
    required this.workoutName,
    this.isDone = false,
    required this.date,
    required this.time,
    this.isOnline = false,
  }) : super(key: key);

  final double height;
  final double width;
  final String workoutName;
  final bool isDone;
  final String date;
  final String time;
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
                      builder: (context) => live_training(),
                    ),
                  )
                : null;
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
