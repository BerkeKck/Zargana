import 'package:flutter/material.dart';

Color UstNav = Color(0xFF282140);

class UserTraining extends StatefulWidget {
  const UserTraining({super.key});

  @override
  State<UserTraining> createState() => _UserTrainingState();
}

class _UserTrainingState extends State<UserTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,

        title: const Text("Training"),

      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/arkaplan.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/malebody_front.png",
              //: 650,
              fit: BoxFit.cover,
              // width: 800,
            ),
          ],
        ),
      ),
    );
  }
}

