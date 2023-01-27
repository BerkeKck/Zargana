import 'package:flutter/material.dart';

import 'package:zarganaapp/pages/account_pages/appointment.dart';
import 'package:zarganaapp/pages/account_pages/documents.dart';
import 'package:zarganaapp/pages/account_pages/history.dart';
import 'package:zarganaapp/pages/account_pages/info.dart';
import 'package:zarganaapp/pages/account_pages/measurement.dart';
import 'package:zarganaapp/pages/account_pages/procedures.dart';

Color UstNav = Color(0xFF076DF2);
Color Mor2 = Color(0xFF883DF2);
class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
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
              padding: const EdgeInsets.only(top:78.0),
              child: Container(
                width: 258,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pp-bg.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Mor2,
                  borderRadius: BorderRadius.circular(4),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  // textDirection: TextDirection.rtl,
                  // verticalDirection: VerticalDirection.up,
                  children: [
                    Container(
                        // margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pp-bg.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80.0),
                          child: Image.asset(
                            "assets/images/arnold.jpg",
                          ),
                        )
                        // Image.asset(
                        //     "assets/images/einstein.png",
                        //     fit: BoxFit.scaleDown,
                        //   ),
                        ),
                    const Text(
                      "Said Başkaya",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),
                    ),
                    const Text(
                      "Your BMI is 20.23",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserInfo(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(

                        margin: const EdgeInsets.only(bottom: 8, right: 8),
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Icon(
                                Icons.info_outlined,color: Colors.blue,size:36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.0),
                              child: Text(
                                "General Info",style: TextStyle(color: Colors.white, fontSize:11),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserHistory(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 8, right: 8),
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                        children: const [
                        Padding(
                        padding: EdgeInsets.only(top:20.0),
                        child: Icon(
                          Icons.book_outlined,color: Colors.blue,size:36,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 22.0),
                        child: Text(
                          "Health Sum",style: TextStyle(color: Colors.white, fontSize:11),
                        ),
                      ),

                      ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserAppointment(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Icon(
                                Icons.calendar_month,color: Colors.blue,size:36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.0),
                              child: Text(
                                "Appointments",style: TextStyle(color: Colors.white, fontSize:11),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserMeasurement(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Icon(
                                Icons.scale_outlined,color: Colors.blue,size:36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.0),
                              child: Text(
                                "Measurement",style: TextStyle(color: Colors.white, fontSize:11),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserProcedures(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Icon(
                                Icons.domain_outlined,color: Colors.blue,size:36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.0),
                              child: Text(
                                "Medical Procedures",style: TextStyle(color: Colors.white, fontSize:11),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const UserDocuments(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 125,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/button3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top:20.0),
                              child: Icon(
                                Icons.document_scanner_outlined,color: Colors.blue,size:36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.0),
                              child: Text(
                                "Documents",style: TextStyle(color: Colors.white, fontSize:11),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
