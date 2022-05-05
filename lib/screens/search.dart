import 'package:fitness_app/screens/profile_viewas.dart';
import 'package:fitness_app/screens/seach_section/search_details.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'chat_screen.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  final GlobalKey _menuKey = GlobalKey();
  List search_result = [
    {'name': "Hilary Ouse", 'follow': 1},
    {'name': "Hilary Ouse", 'follow': 0},
    {'name': "Hilary Ouse", 'follow': 1},
    {'name': "Hilary Ouse", 'follow': 0},
    {'name': "Hilary Ouse", 'follow': 1},
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
          title: const Text(
            'Choose trainer',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height / 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.grey,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search, color: Colors.white),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          showMenu(
                            //TODO
                            context: context,
                            position: RelativeRect.fromLTRB(width, 0, 0, 0),
                            color: Colors.black,
                            items: [
                              PopupMenuItem<String>(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedItem = 'Trainer';
                                    });
                                    print(selectedItem);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Trainer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                value: 'Trainer',
                              ),
                              PopupMenuItem<String>(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedItem = 'Trainee';
                                    });
                                    print(selectedItem);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Trainee',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                value: 'Trainee',
                              ),
                            ],
                          );
                        },
                        child: const Icon(
                          Icons.tune,
                          color: AppColors.magenta,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ListView.builder(
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
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: search_result[index]['follow'] == 1
                                  ? details_search()
                                  : const ViewAsProfileScreen(),
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
                                                fontSize: 18),
                                          ),
                                          const Text(
                                            'About Trainer',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                            ),
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
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeftWithFade,
                                                child: const ChatScreen(
                                                    chatName: 'Silva Roy'),
                                              ),
                                            );
                                          },
                                          child: SvgPicture.asset(
                                              'assets/icons/chats.svg')),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          search_result[index]['follow'] == 0
                                              ? setState(() {
                                                  search_result[index]
                                                      ['follow'] = 1;
                                                })
                                              : Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType
                                                        .rightToLeftWithFade,
                                                    child: const ChatScreen(
                                                        chatName: 'Silva Roy'),
                                                  ),
                                                );
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: AppColors.material)),
                                          child: const Icon(Icons.add,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              // Text(search_result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}


// PopupMenuButton<String>(
//                             key: _menuKey,
//                             onSelected: (String result) {
//                               setState(() {
//                                 selectedItem = result;
//                               });
//                               print(selectedItem);
//                             },
//                             itemBuilder: (BuildContext context) =>
//                                 <PopupMenuEntry<String>>[
//                               const PopupMenuItem<String>(
//                                 value: 'Trainer',
//                                 child: Text('Trainer'),
//                               ),
//                               const PopupMenuItem<String>(
//                                 value: 'Trainee',
//                                 child: Text('Trainee'),
//                               ),
//                             ],
//                           );
                        