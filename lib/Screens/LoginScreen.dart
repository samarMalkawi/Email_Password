import 'package:assignment_7/Screens/Profile.dart';
import 'package:assignment_7/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String Email = "";
  String Password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          width: 500,
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
                Container(
                    height: 100,
                    width: 200,
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("images/avatar.png"))),
                Divider(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        Email = value;
                      });
                    },
                    cursorColor: Colors.pink,
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      label: Text(
                        "Example@gmail.com",
                        style: TextStyle(
                            color: Color.fromARGB(255, 198, 125, 211)),
                      ),
                      prefixIcon: Icon(
                          color: Color.fromARGB(255, 243, 92, 142),
                          Icons.email),
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
                    onChanged: ((value) {
                      setState(() {
                        Password = value;
                      });
                    }),
                    cursorColor: Colors.pink,
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 198, 125, 211)),
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
                      onPrimary: Color.fromARGB(255, 248, 139, 175)),
                  onPressed: () {
                    setState(() {
                      print(Email);
                      print(Password);
                      if (Email == "summarmalkawi@gmail.com" &&
                          Password == "123456789")
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return Profile();
                        })));
                      else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor:
                                  Color.fromARGB(255, 243, 143, 136),
                              content: SingleChildScrollView(
                                child: Text(
                                  "The Email or the Password you entered is incorrect, Try again with a different login information..",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.yellow),
                                ),
                              ),
                              actions: [
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 252, 240, 133),
                                        onPrimary: Colors.orange,
                                        shadowColor: Colors.purple,
                                        elevation: 20),
                                    onPressed: (() {
                                      Navigator.pop(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return AlertDialog();
                                      })));
                                    }),
                                    icon: Icon(Icons.key_rounded),
                                    label: Text("Try again")),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 252, 240, 133),
                                        onPrimary: Colors.orange,
                                        shadowColor: Colors.purple,
                                        elevation: 20),
                                    onPressed: (() {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return Home();
                                      })));
                                    }),
                                    icon: Icon(Icons.search_outlined),
                                    label: Text("Search for other solutions")),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                  icon: Icon(
                    Icons.login,
                    color: Colors.purple,
                  ),
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
      ),
    );
  }
}
