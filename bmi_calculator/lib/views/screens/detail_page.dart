import 'package:flutter/material.dart';

import '../../Global/global_class.dart';
import '../../utils/colors_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Details",
          style: TextStyle(
              color: MyColors.theme5,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
              Icons.arrow_back_ios_rounded
          ),
        ),
        backgroundColor: MyColors.theme1,
        foregroundColor: MyColors.theme5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Age
                Container(
                  height: 300,
                  width: 190,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: MyColors.theme1,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.theme4,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                      const BoxShadow(
                          color: Colors.white60,
                          blurRadius: 10,
                          offset: Offset(-3, -3),
                      )
                    ]
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Age
                      Text("Age",
                      style: TextStyle(
                        color: MyColors.theme4,
                        fontSize: 20
                      ),),

                      //Variable
                      Text("${Global.age}",
                        style: TextStyle(
                            color: MyColors.theme5,
                            fontSize: 56,
                          fontWeight: FontWeight.w300
                        ),),

                      //Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Remove
                          Container(
                            height: 56,
                            width: 56,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.theme1,
                              boxShadow: [
                                  BoxShadow(
                                    color: MyColors.theme4,
                                    blurRadius: 10,
                                    offset: Offset(3, 3),
                                  ),
                                  const BoxShadow(
                                    color: Colors.white60,
                                    blurRadius: 10,
                                    offset: Offset(-3, -3),
                                  )
                                ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  (Global.age == 0) ? null : Global.age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: MyColors.theme5,
                              ),
                            ),
                          ),
                          //Add
                          Container(
                            height: 56,
                            width: 56,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.theme1,
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.theme4,
                                  blurRadius: 10,
                                  offset: const Offset(3, 3),
                                ),
                                const BoxShadow(
                                  color: Colors.white60,
                                  blurRadius: 10,
                                  offset: Offset(-3, -3),
                                )
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Global.age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: MyColors.theme5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                //Weight
                Container(
                  height: 300,
                  width: 190,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                      color: MyColors.theme1,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.theme4,
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                        ),
                        const BoxShadow(
                          color: Colors.white60,
                          blurRadius: 10,
                          offset: Offset(-3, -3),
                        )
                      ]
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Age
                      Text("Weight",
                        style: TextStyle(
                            color: MyColors.theme4,
                            fontSize: 20
                        ),),

                      //Variable
                      Text("${Global.weight.toInt()}",
                        style: TextStyle(
                            color: MyColors.theme5,
                            fontSize: 56,
                            fontWeight: FontWeight.w300
                        ),),

                      //Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Remove
                          Container(
                            height: 56,
                            width: 56,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.theme1,
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.theme4,
                                  blurRadius: 10,
                                  offset: const Offset(3, 3),
                                ),
                                const BoxShadow(
                                  color: Colors.white60,
                                  blurRadius: 10,
                                  offset: Offset(-3, -3),
                                )
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  (Global.weight == 0) ? null : Global.weight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: MyColors.theme5,
                              ),
                            )
                          ),
                          //Add
                          Container(
                            height: 56,
                            width: 56,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.theme1,
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.theme4,
                                  blurRadius: 10,
                                  offset: const Offset(3, 3),
                                ),
                                const BoxShadow(
                                  color: Colors.white60,
                                  blurRadius: 10,
                                  offset: Offset(-3, -3),
                                )
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Global.weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: MyColors.theme5,
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 360,
              width: double.infinity,
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                  color: MyColors.theme1,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.theme4,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                    const BoxShadow(
                      color: Colors.white60,
                      blurRadius: 10,
                      offset: Offset(-3, -3),
                    )
                  ]
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Age
                  Text("Height",
                    style: TextStyle(
                        color: MyColors.theme4,
                        fontSize: 20
                    ),),

                  //Variable
                  Text("${Global.heightFeet.toInt()}' ${Global.heightInch.toInt()}\"",
                    style: TextStyle(
                        color: MyColors.theme5,
                        fontSize: 56,
                        fontWeight: FontWeight.w300
                    ),),

                  //Feet
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Slider(
                          value: Global.heightFeet.toDouble(),
                          min: 0,
                          max: 12,
                          
                          divisions: 12,
                          label: Global.heightFeet.toString(),
                          activeColor: MyColors.theme3,
                          thumbColor: MyColors.theme3,
                          inactiveColor: MyColors.theme2,
                          onChanged: (value) {
                            setState(() {
                              Global.heightFeet = value;
                            });
                          },
                      ),
                      Positioned(
                        height: 20,
                          child: Text("(Feet)",
                          style: TextStyle(
                            color: MyColors.theme4
                          ),),
                      )
                    ],
                  ),

                  //Inch
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Slider(
                        value: Global.heightInch.toDouble(),
                        min: 0,
                        max: 12,
                        divisions: 12,
                        label: Global.heightInch.toString(),
                        activeColor: MyColors.theme3,
                        thumbColor: MyColors.theme3,
                        inactiveColor: MyColors.theme2,
                        onChanged: (value) {
                          setState(() {
                            Global.heightInch = value;
                          });
                        },
                      ),
                      Positioned(
                        height: 20,
                          child: Text("(Inch)",
                          style: TextStyle(
                            color: MyColors.theme4
                          ),),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {
            Global.convertMeter = (Global.heightFeet * 0.3048) + (Global.heightInch * 0.0254);
            Global.BMI = Global.weight / (Global.convertMeter * Global.convertMeter);
            print("-----------------------------------------");
            print("BMI = ${Global.BMI}");
            print("-----------------------------------------");
          },
          style: ElevatedButton.styleFrom(
            elevation: 5,
            minimumSize: const Size(392, 50),
            backgroundColor: MyColors.theme3,
            foregroundColor: MyColors.theme1,
            shadowColor: MyColors.theme4
          ),
          icon: const Icon(Icons.calculate_outlined),
          label: const Text("Calculate BMI",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),)
      ),
      backgroundColor: MyColors.theme1,
    );
  }
}
