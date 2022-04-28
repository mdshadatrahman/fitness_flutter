import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

class content extends StatefulWidget {
  @override
  _contentState createState() => _contentState();
}

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height,
              child: ListView.builder(itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: height / 4,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/content.jpeg'),
                                fit: BoxFit.cover)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: width,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 4.0, right: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/t3.jpeg'),
                                            radius: 18,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Hilary Ouse",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height / 6.8,
                            ),
                            Container(
                              width: width,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 4.0, right: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "40 min",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "64 -689 fav",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.comment,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "1k com..",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height / 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grey),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.message,
                                  color: AppColors.grey,
                                ),
                                hintText: 'Comment',
                                hintStyle: TextStyle(color: AppColors.grey),
                                suffixIcon: Icon(
                                  Icons.send,
                                  color: AppColors.material,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    ));
  }
}
