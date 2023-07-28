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
                      Text("${Global.weight}",
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
            )
          ],
        ),
      ),
      backgroundColor: MyColors.theme1,
    );
  }
}
