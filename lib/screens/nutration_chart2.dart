import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

class NutrationChart2 extends StatefulWidget {
  const NutrationChart2({Key? key}) : super(key: key);

  @override
  State<NutrationChart2> createState() => _NutrationChart2State();
}

class _NutrationChart2State extends State<NutrationChart2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.background,
          title: const Text('Nutration Chart'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.05,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: false,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.magenta,
                    border: Border.all(
                      color: AppColors.magenta,
                    ),
                  ),
                  tabs: [
                    SizedBox(
                      height: height * 0.07,
                      width: width * 0.4,
                      child: const Center(
                        child: Text(
                          'Grain',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.07,
                      width: width * 0.4,
                      child: const Center(
                        child: Text(
                          'Veg & Fruits',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.07,
                      width: width * 0.4,
                      child: const Center(
                        child: Text(
                          'Protien',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.07,
                      width: width * 0.4,
                      child: const Center(
                        child: Text(
                          'Fat',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.7, //?There may be a bug here
                //!Tabbar view
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 20),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      //!Grain
                      Container(
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4D4D4D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 20,
                            vertical: height * 0.02,
                          ),
                          child: Column(
                            children: [
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Tiff',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Wheat',
                                foodQuantity: '15g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Oats',
                                foodQuantity: '25g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Rice',
                                foodQuantity: '21g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Corn',
                                foodQuantity: '22g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Berley',
                                foodQuantity: '24g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Sorghum',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Rye',
                                foodQuantity: '18g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Millet',
                                foodQuantity: '18g',
                              ),
                            ],
                          ),
                        ),
                      ),

                      //!Veg & Fruits
                      Container(
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4D4D4D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 20,
                            vertical: height * 0.02,
                          ),
                          child: Column(
                            children: [
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Apples, asparagus',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Aartichoke, avocado',
                                foodQuantity: '15g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'bananas,broccoli',
                                foodQuantity: '25g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Carrots,cherries',
                                foodQuantity: '21g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Daikon,cauliflower',
                                foodQuantity: '22g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'eggplant,endive',
                                foodQuantity: '24g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'figs, fava beans',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'guava,ginger',
                                foodQuantity: '18g',
                              ),
                            ],
                          ),
                        ),
                      ),

                      //!Veg & Fruits
                      Container(
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4D4D4D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 20,
                            vertical: height * 0.02,
                          ),
                          child: Column(
                            children: [
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'eggs',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Almonds',
                                foodQuantity: '15g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Chicken breast',
                                foodQuantity: '25g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Cottage Cheese',
                                foodQuantity: '21g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Greek Yogurt',
                                foodQuantity: '22g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Milk',
                                foodQuantity: '24g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'lentils',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Lean Beef',
                                foodQuantity: '18g',
                              ),
                            ],
                          ),
                        ),
                      ),

                      //!Veg & Fruits
                      Container(
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4D4D4D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 20,
                            vertical: height * 0.02,
                          ),
                          child: Column(
                            children: [
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Sunflower, pumpkin',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Flaxseed Walnuts',
                                foodQuantity: '15g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Soybean, safflower oil',
                                foodQuantity: '25g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'peanut,sesame oils',
                                foodQuantity: '21g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Olives, macadamia',
                                foodQuantity: '22g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'hazelnuts,cashews',
                                foodQuantity: '24g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Fatty fish',
                                foodQuantity: '20g',
                              ),
                              CustomItems(
                                height: height,
                                width: width,
                                foodName: 'Chicken skin',
                                foodQuantity: '18g',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomItems extends StatelessWidget {
  const CustomItems({
    Key? key,
    required this.height,
    required this.width,
    required this.foodName,
    required this.foodQuantity,
  }) : super(key: key);

  final double height;
  final double width;
  final String foodName;
  final String foodQuantity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              foodName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              foodQuantity,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.02),
        Container(
          width: width,
          height: 2,
          color: Colors.white,
        ),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}
