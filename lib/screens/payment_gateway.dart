import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

class PaymentGateway2 extends StatefulWidget {
  const PaymentGateway2({Key? key}) : super(key: key);

  @override
  State<PaymentGateway2> createState() => _PaymentGateway2State();
}

class _PaymentGateway2State extends State<PaymentGateway2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text('Payment Gateway'),
          backgroundColor: AppColors.background,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Container(
                  height: height * 0.15,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.magenta,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width * 0.02),
                      topRight: Radius.circular(width * 0.02),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '\$500',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
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
    );
  }
}
