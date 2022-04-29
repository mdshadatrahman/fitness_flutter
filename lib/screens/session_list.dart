import 'package:fitness_app/screens/sesion_list+tab2.dart';
import 'package:fitness_app/screens/sestion_tab.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sesion_list extends StatefulWidget {
  @override
  _sesion_listState createState() => _sesion_listState();
}

class _sesion_listState extends State<sesion_list>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Session List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
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
            Align(
              alignment: Alignment.bottomCenter,
              child: TabBar(
                padding: const EdgeInsets.only(left: 20, right: 10),
                controller: _controller,
                indicatorColor: AppColors.t2,
                tabs: const [
                  // Tab(icon: Icon(Icons.flight,color: Colors.white,)),
                  Tab(
                    child: Text(
                      "Upcoming Session",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Coach List',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height / 1.3,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TabBarView(
                controller: _controller,
                children: [
                  session_tab2(),
                  session_tab(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
