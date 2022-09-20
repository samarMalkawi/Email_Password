import 'package:assignment_7/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/2.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  cursorColor: Colors.pink,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    label: Text(
                      "Example@gmail.com",
                      style:
                          TextStyle(color: Color.fromARGB(255, 198, 125, 211)),
                    ),
                    prefixIcon: Icon(
                        color: Color.fromARGB(255, 243, 92, 142), Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gapPadding: 10,
                        borderSide: BorderSide(width: 30)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 2),
                    hintText: "Enter your Email",
                  ),
                ),
              ),
              Divider(height: 40),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  cursorColor: Colors.pink,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style:
                          TextStyle(color: Color.fromARGB(255, 198, 125, 211)),
                    ),
                    prefixIcon: Icon(
                        color: Color.fromARGB(255, 243, 92, 142),
                        Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gapPadding: 10,
                        borderSide: BorderSide(width: 30)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 2),
                    hintText: "Enter your password",
                  ),
                ),
              ),
              Divider(
                height: 40,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 227, 155, 240),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return Home();
                    })));
                  });
                },
                icon: Icon(Icons.home),
                label: Text(
                  "Enter",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
