import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class sesion_request extends StatefulWidget {
  @override
  _sesion_requestState createState() => _sesion_requestState();
}

class _sesion_requestState extends State<sesion_request> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String? formattedDate;
  TextEditingController dateinput = TextEditingController();

  List<String> time = [
    '10:00',
    '10:30',
    '11:00',
    '11:30',
  ];
  List<String> amPm = [
    'AM',
    'AM',
    'AM',
    'AM',
    'AM',
  ];
  List<String> body_portion = [
    'Abs',
    'Chest',
    'Leg',
    'Biceps',
  ];
  List<bool> selectedTime = [
    true,
    false,
    false,
    false,
  ];

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.background,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Select Date & Time',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: CircleAvatar(
          //       radius: 24,
          //       backgroundImage: AssetImage('assets/images/t1.jpeg'),
          //     ),
          //   ),
          // ],
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //!Date picker
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width / 20,
                  vertical: height * 0.02,
                ),
                child: Container(
                  height: height * 0.05,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'April 2022',
                      style: TextStyle(
                        fontSize: height / 40,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff585858),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width / 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DatePicker(
                      DateTime.now(),
                      monthTextStyle: const TextStyle(color: Colors.white),
                      dayTextStyle: const TextStyle(color: Colors.white),
                      dateTextStyle: const TextStyle(color: Colors.white),
                      initialSelectedDate: DateTime.now(),
                      selectionColor: AppColors.magenta,
                      selectedTextColor: Colors.white,
                      deactivatedColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          // _selectedValue = date;
                        });
                      },
                    ),
                  ],
                ),
              ),

              //!TIme picker
              Padding(
                padding: EdgeInsets.only(
                  left: width / 20,
                  top: height * 0.05,
                ),
                child: Container(
                  height: height * 0.05,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Select Time',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff585858),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.005),
                child: SizedBox(
                  height: height * 0.15,
                  width: width,
                  child: ListView.builder(
                    itemCount: time.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTime[index] = !selectedTime[index];
                                for (int i = 0; i < selectedTime.length; i++) {
                                  if (i != index) {
                                    selectedTime[i] = false;
                                  }
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: width / 20,
                                top: height * 0.02,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedTime[index]
                                      ? AppColors.magenta
                                      : const Color(0xff4D4D4D),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            time[index],
                                            style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          Text(
                                            amPm[index],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: selectedTime[index]
                                                ? Colors.white
                                                : AppColors.magenta,
                                            width: 1,
                                          ),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Text(
                                            body_portion[index],
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              //!Done Button
              SizedBox(height: height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.magenta,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              CustomDialog(height: height, width: width),
                        );
                      },
                      child: const Text('Done'),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.magenta,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xff4D4D4D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        height: height * 0.35,
        width: width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 33,
              backgroundColor: AppColors.magenta,
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 35,
              ),
            ),
            SizedBox(height: height * 0.03),
            const Text(
              'Your request has been',
              style: TextStyle(
                color: Color(0xff9E9E9E),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.02),
            const Text(
              'Successful',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * 0.03),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Text(
                'DONE',
                style: TextStyle(
                  color: Color(0xff9E9E9E),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
