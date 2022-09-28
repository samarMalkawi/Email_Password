// import 'dart:ui';

import 'package:assignment_7/main.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Summer Malkawi Profile"),
          bottom: TabBar(tabs: [
            IconButton(
                onPressed: (() {}),
                icon: Icon(Icons.person_pin_circle_outlined)),
            IconButton(onPressed: (() {}), icon: Icon(Icons.logout_outlined))
          ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Container(
              height: 900,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/2.jpg"),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      color: Color.fromARGB(255, 230, 162, 242),
                      child: Text(
                        "Personal information",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("images/profile2.jpg"),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Summer Malkawi",
                      style: TextStyle(fontSize: 20, color: Colors.yellow),
                    ),
                    subtitle: Text(
                      "Full name",
                      style: TextStyle(color: Colors.teal),
                    ),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text(
                      "Computer science",
                      style: TextStyle(fontSize: 20, color: Colors.yellow),
                    ),
                    subtitle:
                        Text("Major", style: TextStyle(color: Colors.teal)),
                    leading: Icon(Icons.laptop_chromebook),
                  ),
                  ListTile(
                    title: Text(
                      "Flutter developer",
                      style: TextStyle(fontSize: 20, color: Colors.yellow),
                    ),
                    subtitle: Text("Future work",
                        style: TextStyle(color: Colors.teal)),
                    leading: Icon(Icons.work_outline_outlined),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Container(
                width: 500,
                height: 1000,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 230, 179, 239)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/bay.jpg"),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 228, 190, 235),
                          onPrimary: Color.fromARGB(255, 253, 185, 207),
                          shadowColor: Colors.purple,
                          elevation: 20,
                        ),
                        onPressed: (() {
                          Navigator.pop(context, MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ));
                        }),
                        icon: Icon(Icons.logout_outlined,
                            color: Color.fromARGB(255, 198, 78, 118)),
                        label: Text(
                          "Logout :(",
                          style: TextStyle(
                              color: Color.fromARGB(255, 198, 78, 118)),
                        ))
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
