import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';

Color UstNav = Color(0xFF282140);
class UserStep extends StatefulWidget {
  const UserStep({super.key});

  @override
  State<UserStep> createState() => _UserStepState();
}

class _UserStepState extends State<UserStep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,

        title: const Text("Daily"),

      ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/arkaplan.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 20,
                percent: 0.4,
                animation: true,
                animationDuration: 1000,
                progressColor: Colors.white,
                backgroundColor: Colors.white70,
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/steps.png",
                      height: 60,
                      width: 60,
                    ),
                    const Text("2846",
                    style: TextStyle(fontSize: 35,color: Colors.white,),),
                  ],
                ),
                // const Text(
                //   "2846",
                //   style: TextStyle(fontSize: 40),
                // ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 50,
                    lineWidth: 3,
                    percent: 0.0,
                    animation: true,
                    animationDuration: 1000,
                    progressColor: Colors.white,
                    backgroundColor: Colors.white70,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: const Text(
                      "1.4 km",
                      style: TextStyle(fontSize: 20,color: Colors.white70),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 70,
                    lineWidth: 3,
                    percent: 0,
                    animation: true,
                    animationDuration: 1000,
                    progressColor: Colors.white,
                    backgroundColor: Colors.white70,
                    circularStrokeCap: CircularStrokeCap.round,
                    center:
                    const Text(
                      "149 Cal",
                      style: TextStyle(fontSize: 23,color: Colors.white70),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 50,
                    lineWidth: 3,
                    percent: 0,
                    animation: true,
                    animationDuration: 1000,
                    progressColor: Colors.white,
                    backgroundColor: Colors.white70,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: const Text(
                      "148 min",
                      style: TextStyle(fontSize: 20,color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
