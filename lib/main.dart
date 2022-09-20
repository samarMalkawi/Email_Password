import 'package:flutter/material.dart';
import 'Screens/LoginScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          ElevatedButton.icon(
            onPressed: (() {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoginScreen();
                })));
              });
            }),
            icon: Icon(Icons.login),
            label: Text("go to Login page"),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/1.jpg"),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Colors.pink,
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  backgroundColor: Color.fromARGB(255, 244, 189, 207)),
              decoration: InputDecoration(
                label: Text(
                  "Laptop , Mobiles , ...",
                  style: TextStyle(color: Color.fromARGB(255, 198, 125, 211)),
                ),
                prefixIcon: Icon(
                    color: Color.fromARGB(255, 243, 92, 142), Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gapPadding: 10,
                    borderSide: BorderSide(width: 30)),
                contentPadding: EdgeInsets.symmetric(horizontal: 2),
                hintText: "Search here ...",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
