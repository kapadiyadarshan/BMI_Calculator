import 'package:flutter/material.dart';

import '../../Global/global_class.dart';
import '../../utils/colors_utils.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({Key? key}) : super(key: key);

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body Mass Index",
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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 280,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.theme1,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: MyColors.theme3
                  )
                ]
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your BMI",
                    style: TextStyle(
                      color: MyColors.theme4,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  Text("${Global.BMI.toString().split('.')[0]}.${Global.BMI.toString().split('.')[1].substring(0,1)}",
                    style: TextStyle(
                      color: MyColors.theme5,
                      fontSize: 72,
                      fontWeight: FontWeight.w400
                    ),)
                ],
              ),
            ),
            const SizedBox(
              height: 112,
            ),
            //<16
            Row(
              children: [
                Text("Very severely underweight",
                  style: TextStyle(
                    color: (Global.BMI < 16) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI < 16) ? FontWeight.bold : null,
                    fontSize: (Global.BMI < 16) ? 18 : null,
                  ),),
                const Spacer(),
                Text("<16",
                  style: TextStyle(
                    color: (Global.BMI < 16) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI < 16) ? FontWeight.bold : null,
                    fontSize: (Global.BMI < 16) ? 18 : null,
                  ),),
              ],
            ),
            //16.0 to 16.9
            Row(
              children: [
                Text("Severely underweight",
                  style: TextStyle(
                      color: (Global.BMI>=16 && Global.BMI<17) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=16 && Global.BMI<17) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=16 && Global.BMI<17) ? 18 : null,
                  ),),
                const Spacer(),
                Text("16.0-16.9",
                  style: TextStyle(
                      color: (Global.BMI>=16 && Global.BMI<17) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=16 && Global.BMI<17) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=16 && Global.BMI<17) ? 18 : null,
                  ),),
              ],
            ),
            //17.0 t0 18.4
            Row(
              children: [
                Text("Underweight",
                  style: TextStyle(
                    color: (Global.BMI>=17 && Global.BMI<18.5) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI>=17 && Global.BMI<18.5) ? FontWeight.bold : null,
                    fontSize: (Global.BMI>=17 && Global.BMI<18.5) ? 18 : null,
                  ),),
                const Spacer(),
                Text("17.0-18.4",
                  style: TextStyle(
                    color: (Global.BMI>=17 && Global.BMI<18.5) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI>=17 && Global.BMI<18.5) ? FontWeight.bold : null,
                    fontSize: (Global.BMI>=17 && Global.BMI<18.5) ? 18 : null,
                  ),),
              ],
            ),
            //18.5 t0 24.9
            Row(
              children: [
                Text("Normal",
                  style: TextStyle(
                    color: (Global.BMI>=18.5 && Global.BMI<25) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI>=18.5 && Global.BMI<25) ? FontWeight.bold : null,
                    fontSize: (Global.BMI>=18.5 && Global.BMI<25) ? 18 : null,
                  ),),
                const Spacer(),
                Text("18.5-24.9",
                  style: TextStyle(
                    color: (Global.BMI>=18.5 && Global.BMI<25) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI>=18.5 && Global.BMI<25) ? FontWeight.bold : null,
                    fontSize: (Global.BMI>=18.5 && Global.BMI<25) ? 18 : null,
                  ),),
              ],
            ),
            //25.0 to 29.9
            Row(
              children: [
                Text("Overweight",
                  style: TextStyle(
                    color: (Global.BMI>=25 && Global.BMI<30) ? MyColors.theme3 : MyColors.theme2,
                    fontWeight: (Global.BMI>=25 && Global.BMI<30) ? FontWeight.bold : null,
                    fontSize: (Global.BMI>=25 && Global.BMI<30) ? 18 : null,
                  ),),
                const Spacer(),
                Text("25.0-29.9",
                  style: TextStyle(
                      color: (Global.BMI>=25 && Global.BMI<30) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=25 && Global.BMI<30) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=25 && Global.BMI<30) ? 18 : null
                  ),),
              ],
            ),
            //30.0 t0 34.9
            Row(
              children: [
                Text("Obese Class I",
                  style: TextStyle(
                      color: (Global.BMI>=30 && Global.BMI<35) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=30 && Global.BMI<35) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=30 && Global.BMI<35) ? 18 : null
                  ),),
                const Spacer(),
                Text("30.0-34.9",
                  style: TextStyle(
                      color: (Global.BMI>=30 && Global.BMI<35) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=30 && Global.BMI<35) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=30 && Global.BMI<35) ? 18 : null
                  ),),
              ],
            ),
            //35.0 to 39.9
            Row(
              children: [
                Text("Obese Class II",
                  style: TextStyle(
                      color: (Global.BMI>=35 && Global.BMI<40) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=35 && Global.BMI<40) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=35 && Global.BMI<40) ? 18 : null
                  ),),
                const Spacer(),
                Text("35.0-39.9",
                  style: TextStyle(
                      color: (Global.BMI>=35 && Global.BMI<40) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=35 && Global.BMI<40) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=35 && Global.BMI<40) ? 18 : null
                  ),),
              ],
            ),
            //>40
            Row(
              children: [
                Text("Obese Class III",
                  style: TextStyle(
                      color: (Global.BMI>=40) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=40) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=40) ? 18 : null
                  ),),
                const Spacer(),
                Text(">40",
                  style: TextStyle(
                      color: (Global.BMI>=40) ? MyColors.theme3 : MyColors.theme2,
                      fontWeight: (Global.BMI>=40) ? FontWeight.bold : null,
                      fontSize: (Global.BMI>=40) ? 18 : null
                  ),),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.theme1,
    );
  }
}
