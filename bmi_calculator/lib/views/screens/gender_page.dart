import 'package:bmi_calculator/utils/colors_utils.dart';
import 'package:bmi_calculator/utils/route_utils.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {

  String Selected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose One",
        style: TextStyle(
          color: MyColors.theme5,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: MyColors.theme1,
        foregroundColor: MyColors.theme5,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Male
            InkWell(
              onTap: () {
                setState(() {
                  Selected = "Male";
                });
              },
              child: Container(
                height: 240,
                width: 240,

                decoration: BoxDecoration(
                  color: MyColors.theme1,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    (Selected == "Male") ? BoxShadow(
                      color: MyColors.theme3,
                      blurRadius: 10,
                      offset: const Offset(5, 5),
                    ) : BoxShadow(
                      color: MyColors.theme4,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                    (Selected == "Male") ? BoxShadow(
                      color: MyColors.theme3,
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                    ) :const BoxShadow(
                      color: Colors.white60,
                      blurRadius: 10,
                      offset: Offset(-4, -4),
                    ),
                    (Selected == "Male") ? BoxShadow(
                      color: MyColors.theme3,
                      blurRadius: 10,
                      offset: Offset(5, -5),
                    ) : BoxShadow(
                      color: MyColors.theme1,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                    (Selected == "Male") ? BoxShadow(
                      color: MyColors.theme3,
                      blurRadius: 10,
                      offset: Offset(-5, 5),
                    ) : BoxShadow(
                      color: MyColors.theme1,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.man_4,
                      size: 100,
                      color: MyColors.theme5,
                    ),
                    Text("Male",
                    style: TextStyle(
                      color: MyColors.theme5,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),
            ),
            //Female
            InkWell(
              onTap: () {
                setState(() {
                  Selected = "Female";
                });
              },
              child: Container(
                height: 240,
                width: 240,

                decoration: BoxDecoration(
                    color: MyColors.theme1,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      (Selected == "Female") ? BoxShadow(
                        color: MyColors.theme3,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ) : BoxShadow(
                        color: MyColors.theme4,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                      (Selected == "Female") ? BoxShadow(
                        color: MyColors.theme3,
                        blurRadius: 10,
                        offset: Offset(-5, -5),
                      ) :const BoxShadow(
                        color: Colors.white60,
                        blurRadius: 10,
                        offset: Offset(-4, -4),
                      ),
                      (Selected == "Female") ? BoxShadow(
                        color: MyColors.theme3,
                        blurRadius: 10,
                        offset: Offset(5, -5),
                      ) : BoxShadow(
                        color: MyColors.theme1,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                      (Selected == "Female") ? BoxShadow(
                        color: MyColors.theme3,
                        blurRadius: 10,
                        offset: Offset(-5, 5),
                      ) : BoxShadow(
                        color: MyColors.theme1,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.woman,
                      size: 100,
                      color: MyColors.theme5,
                    ),
                    Text("Female",
                      style: TextStyle(
                          color: MyColors.theme5,
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                      ),)
                  ],
                ),
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoute.DetailPage);
        },
        shape: const CircleBorder(
          eccentricity: 0.7
        ),
        backgroundColor: MyColors.theme3,
        foregroundColor: MyColors.theme1,

        child: const Icon(
          Icons.arrow_forward_ios_outlined
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: MyColors.theme1,
    );
  }
}
