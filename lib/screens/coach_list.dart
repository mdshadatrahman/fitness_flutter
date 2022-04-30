import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

import '../utils/colors.dart';

class CoachList extends StatefulWidget {
  const CoachList({Key? key}) : super(key: key);

  @override
  State<CoachList> createState() => _CoachListState();
}

class _CoachListState extends State<CoachList> {
  List search_result = [
    {'name': "Hilary Ouse", 'follow': 1},
    {'name': "Hilary Ouse", 'follow': 0},
    {'name': "Hilary Ouse", 'follow': 1},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Coach List'),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              // Get.back();
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          // actions: [
          //   Padding(
          //     padding: EdgeInsets.only(right: width / 20),
          //     child: const CircleAvatar(
          //       backgroundImage: AssetImage('assets/images/p22.jpg'),
          //     ),
          //   )
          // ],
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            itemCount: search_result.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Get.to(
                    //   () => details_search(),
                    //   duration: const Duration(
                    //       milliseconds:
                    //           500), //duration of transitions, default 1 sec
                    //   transition: Transition.rightToLeft,
                    // );
                  },
                  child: Container(
                    height: height / 10,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('assets/images/t1.jpeg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      search_result[index]['name'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                    const Text(
                                      'About Trainer',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        search_result[index]['follow'] == 1
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    // Get.to(
                                    //   () => const ChatScreen(
                                    //       chatName: 'Silva Roy'),
                                    // );
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/chats.svg',
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    // search_result[index]['follow'] == 0
                                    //     ? setState(() {
                                    //         search_result[index]['follow'] =
                                    //             1;
                                    //       })
                                    //     : Get.to(
                                    //         () => const ChatScreen(
                                    //             chatName: 'Silva Roy'),
                                    //       );
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: AppColors.material,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              );
            },
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
  }) : super(key: key);

  final double height;
  final double width;

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
                  children: const [
                    Text(
                      'Hilary Ouse',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
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
            SvgPicture.asset('assets/icons/chats.svg'),
          ],
        ),
      ),
    );
  }
}
