import 'package:fitness_app/screens/seach_section/search_details.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FollowerFollowingsScreen extends StatefulWidget {
  const FollowerFollowingsScreen({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  _FollowerFollowingsScreenState createState() =>
      _FollowerFollowingsScreenState();
}

class _FollowerFollowingsScreenState extends State<FollowerFollowingsScreen> {
  final GlobalKey _menuKey = GlobalKey();
  List search_result = [
    {'name': "Hilary Ouse", 'follow': 1},
    {'name': "Hilary Ouse", 'follow': 0},
    {'name': "Hilary Ouse", 'follow': 1},
    {'name': "Hilary Ouse", 'follow': 0},
    {'name': "Hilary Ouse", 'follow': 1},
  ];
  List<String> occupation = [
    "Developer",
    "Driver",
    "Gym Trainer",
    "Designer",
    "Doctor",
  ];
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          leading: IconButton(
            onPressed: () {
              // Get.back();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/t1.jpeg'),
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                itemCount: search_result.length,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeftWithFade,
                            child: details_search(),
                          ),
                        );
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          search_result[index]['name'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          occupation[index],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
