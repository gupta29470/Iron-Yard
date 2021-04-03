import 'package:iron_shop_ui/screens/login_page.dart';
import 'package:iron_shop_ui/widgets/StyleScheme.dart';
import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/order_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageStateful(),
    );
  }
}

class HomePageStateful extends StatefulWidget {
  @override
  _HomePageStatefulState createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  void openOrderPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(),
      ),
    );
  }

  void backToLoginPage() {
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: backToLoginPage,
        ),
        title: Text(
          "IRON YARD",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "BLESS THIS MESS",
                              style: headingStyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "We pick your clothes and \ngive them a fresh look",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/bannerImg.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "SERVICES",
                  style: headingStyle,
                ),
              ),
              Container(
                height: 200,
                color: Color(0xfff1ffff),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/servicesImg.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "IRON ONLY",
                              style: headingStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: openOrderPage,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfff3953b),
                                      Color(0xffe57509)
                                    ],
                                    stops: [0, 1],
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  "Place Order",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'sfpro',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "AVAILABILITY ",
                          style: contentStyle,
                        ),
                        Text(
                          "AVAILABLE",
                          style: contentStyle.copyWith(
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We are open from 7.00 am to 8.00 pm",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHECK THE ESTIMATION",
                      style: contentStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You can check time extimation with price",
                      style: contentStyle,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xfff3953b), Color(0xffe57509)],
                          stops: [0, 1],
                        ),
                        shape: BoxShape.circle),
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: "My Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: "Track Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
