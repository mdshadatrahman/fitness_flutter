import 'package:fitness_app/screens/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:get/get.dart';

import '../utils/colors.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Post',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // Get.back();
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width / 15),
              child: SvgPicture.asset('assets/icons/nofi.svg'),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.03),
                Column(
                  children: [
                    //!Circleavatar, name, time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/p22.jpg'),
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
                            type: PageTransitionType.rightToLeftWithFade,
                            child: const PostScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: width,
                        height: height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: isFav ? Colors.red : const Color(0xff898488),
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
                            //   transition: Transition.rightToLeft,
                            // );
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            borderSide: BorderSide(color: Color(0xff898488)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff898488)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff898488)),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff898488)),
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
        ),
      ),
    );
  }
}
