import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LiveVideo extends StatefulWidget {
  const LiveVideo({Key? key}) : super(key: key);

  @override
  State<LiveVideo> createState() => _LiveVideoState();
}

class _LiveVideoState extends State<LiveVideo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/video_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: height * 0.02),
                        Container(
                          // height: height,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width / 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'assets/images/p23.jpg',
                                      ),
                                    ),
                                    SizedBox(width: width * 0.03),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          'I am a progressive Trainer',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'End',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: height * 0.07,
                      left: width * 0.16,
                      child: const CircleAvatar(
                        backgroundColor: AppColors.magenta,
                        radius: 10,
                      ),
                    ),
                    Positioned(
                      top: height * 0.0715,
                      left: width * 0.163,
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 9,
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),

                //!Play Button
                SizedBox(height: height / 3),
                const Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: AppColors.magenta,
                    size: 80,
                  ),
                ),

                //!Comments
                SizedBox(height: height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 20),
                  child: SizedBox(
                    height: height * 0.25,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          LiveChatTile(
                            height: height,
                            width: width,
                            comment: 'Hello, how are you?',
                            username: 'Hilary Ouse',
                            profileImage: 'assets/images/p24.jpg',
                          ),
                          LiveChatTile(
                            height: height,
                            width: width,
                            comment: 'Hi there',
                            username: 'Oswald Mosley',
                            profileImage: 'assets/images/p23.jpg',
                          ),
                          LiveChatTile(
                            height: height,
                            width: width,
                            comment: 'Hello, how are you?',
                            username: 'Hilary Ouse',
                            profileImage: 'assets/images/p24.jpg',
                          ),
                          LiveChatTile(
                            height: height,
                            width: width,
                            comment: 'Hi there',
                            username: 'Oswald Mosley',
                            profileImage: 'assets/images/p23.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //!Comment field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height / 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.8),
                    ),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.message,
                          color: AppColors.white,
                        ),
                        hintText: 'Comment',
                        hintStyle: TextStyle(color: AppColors.white),
                        suffixIcon: Icon(
                          Icons.send,
                          color: AppColors.magenta,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LiveChatTile extends StatelessWidget {
  const LiveChatTile({
    Key? key,
    required this.height,
    required this.width,
    required this.profileImage,
    required this.username,
    required this.comment,
  }) : super(key: key);

  final double height;
  final double width;
  final String profileImage;
  final String username;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.01),
      child: Container(
        height: height * 0.08,
        width: width * 0.7,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            SizedBox(width: width * 0.02),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(width: width * 0.025),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  comment,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
