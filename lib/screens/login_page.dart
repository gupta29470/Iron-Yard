import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/home_page.dart';
import 'package:iron_shop_ui/screens/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPageStateful(),
      theme: ThemeData(fontFamily: 'roboto'),
    );
  }
}

class LoginPageStateful extends StatefulWidget {
  @override
  _LoginPageStatefulState createState() => _LoginPageStatefulState();
}

class _LoginPageStatefulState extends State<LoginPageStateful> {
  void openSignUpPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpPage(),
      ),
    );
  }

  void openHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/logo.png"),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro',
                    ),
                  ),
                  Text(
                    "Please Log In to Your Account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: openHomePage,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        gradient: LinearGradient(
                            colors: [Color(0xfff3953b), Color(0xffe57509)],
                            stops: [0, 1],
                            begin: Alignment.topCenter),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'sfpro'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.orange, width: 1),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/images/googleLogo.png')),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.orange,
                            width: 1,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/fbLogo.png'))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'sfpro',
                  ),
                ),
                InkWell(
                  onTap: openSignUpPage,
                  child: Text(
                    " SIGN UP",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
