
import 'package:flutter/material.dart';

Color UstNav = Color(0xFF282140);
class UserWeight extends StatefulWidget {
  const UserWeight({super.key});

  @override
  State<UserWeight> createState() => _UserWeightState();
}

class _UserWeightState extends State<UserWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,

        title: const Text("Profile"),

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg21.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/icons/weightscales.png",
                      height: 120,
                      width: 120,
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "This week",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "64,5 KG",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "Last week",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "62,8 KG",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "23.11.2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "63,4 KG",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg24.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Training Series",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 160,
                    height: 122,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/arkaplan.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "20",
                        style: TextStyle(fontSize: 80, color: Colors.white,),
                      ),
                    ),
                  ),
                  const Text(
                    "DAYS",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

