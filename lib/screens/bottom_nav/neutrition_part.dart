import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class neutrition_part extends StatefulWidget {
  @override
  _neutrition_partState createState() => _neutrition_partState();
}

class _neutrition_partState extends State<neutrition_part> {
  String? heart = 'Diabetics';
  String? health_type = 'Lose belly fat';
  String? alergy;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.background,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        // ),
        title: const Text(
          'Nutrition Chart',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Enter your height",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              hintText: 'Feet',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              hintText: 'Feet',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Enter your Weight",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Kg',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Heart Issue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height / 18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  isExpanded: true, //Add
                  dropdownColor: AppColors.grey,
                  style: const TextStyle(color: Colors.white54),
                  iconDisabledColor: AppColors.t2, //
                  iconEnabledColor: AppColors.t2, // this property

                  hint: heart == null
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Select Heart Issue ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey)),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            heart!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),

                  items: <String>[
                    ' Diabetics',
                    ' Backspin',
                    ' Nuninsulin',
                    ' Obesity',
                    ' Osteoporosis',
                    ' Blood pressure',
                  ]
                      .map<DropdownMenuItem<String>>(
                          (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                      .toList(),

                  onChanged: (value) {
                    setState(() {
                      heart = value;
                    });
                  },
                  underline: DropdownButtonHideUnderline(child: Container()),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Allergic",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height / 18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  isExpanded: true, //Add
                  dropdownColor: AppColors.grey,
                  style: const TextStyle(color: Colors.white54),
                  iconDisabledColor: AppColors.t2, //
                  iconEnabledColor: AppColors.t2, // this property

                  hint: alergy == null
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Select Yes/No",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            alergy!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),

                  items: <String>[
                    ' Yes',
                    ' No',
                  ]
                      .map<DropdownMenuItem<String>>(
                          (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                      .toList(),

                  onChanged: (value) {
                    setState(() {
                      alergy = value;
                    });
                  },
                  underline: DropdownButtonHideUnderline(child: Container()),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Type of health",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height / 18,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  isExpanded: true, //Add
                  dropdownColor: AppColors.grey,
                  style: const TextStyle(color: Colors.white54),
                  iconDisabledColor: AppColors.t2, //
                  iconEnabledColor: AppColors.t2, // this property

                  hint: health_type == null
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Select Yes/No",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            health_type!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),

                  items: <String>[
                    'Lose belly fat',
                    ' Weight lose',
                    ' ABS gaining',
                  ]
                      .map<DropdownMenuItem<String>>(
                        (value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),

                  onChanged: (value) {
                    setState(() {
                      health_type = value;
                    });
                  },
                  underline: DropdownButtonHideUnderline(child: Container()),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
