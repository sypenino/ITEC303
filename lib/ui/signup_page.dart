/* Sydney Penino
Team: Fourever
Project Name: Ding (Bill Reminder Application)
Feature: [LARP-001] Registration/Sign Up Page
Feature description: This feature is simple and straightforward, 
so users can quickly and easily gain access to the system. 
It is secure so that only authorized users can gain access.
Widgets: TextField => user input their name, email, password and confirm password
         Button: => Login button 
*/
import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _confirmPasswordController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 12.0),
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/3.png'), // fit: BoxFit.fill
                ))),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20.0,
                            // offset: Offset(0, 10)
                          )
                        ]),
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.blue))),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outlined,
                                color: Colors.blue,
                              ),
                              border: InputBorder.none,
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.black)),
                          controller: _nameController,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.blue))),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.blue,
                              ),
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.black)),
                          controller: _emailController,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.blue))),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.blue,
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black)),
                          controller: _passwordController,
                          obscureText: true,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.blue,
                              ),
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(color: Colors.black)),
                          controller: _confirmPasswordController,
                          obscureText: true,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15), //apply style to all
                          children: [
                        TextSpan(
                            text: 'I agree with',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: ' Terms',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: ' and',
                        ),
                        TextSpan(
                          text: ' Policy',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        primary: Color.fromRGBO(56, 182, 255, 1),
                        onPrimary: Colors.black,
                        shadowColor: Color.fromRGBO(56, 182, 255, .6),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(150, 55),
                      ),
                      child: Text('SIGN UP'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUpPage()));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
