import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/login_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPageStateful(),
    );
  }
}

class SignUpPageStateful extends StatefulWidget {
  @override
  _SignUpPageStatefulState createState() => _SignUpPageStatefulState();
}

class _SignUpPageStatefulState extends State<SignUpPageStateful> {
  void openLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
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
              )),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email ID",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xfff3953b), Color(0xffe57509)],
                        stops: [0, 1],
                        begin: Alignment.topCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sfpro',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "By pressing signup you agree to our terms and conditions",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16, fontFamily: 'sfpro'),
                ),
                InkWell(
                  onTap: openLoginPage,
                  child: Text(
                    " LOGIN",
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
