import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/splash_screen.dart';
import 'package:iron_shop_ui/screens/login_page.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingStateful(),
    );
  }
}

class OnboardingStateful extends StatefulWidget {
  @override
  _OnboardingStatefulState createState() => _OnboardingStatefulState();
}

class _OnboardingStatefulState extends State<OnboardingStateful> {
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/bg.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("onBoard1", "Choose Clothes"),
                    onBoardPage("onBoard2", "Schedule Pickup"),
                    onBoardPage("onBoard3", "Get Best Iron Service"),
                    onBoardPage("onBoard2", "Get on Time Delivery"),
                    onBoardPage("onBoard4", "Pay Later"),
                  ],
                  onPageChanged: (value) => setCurrentPage(value),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => getIndicator(index)),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xfff3953b), Color(0xffe57509)],
                      stops: [0, 1],
                      begin: Alignment.topCenter),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  void changePage() {
    if (currentPage >= 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else {
      _pageController.animateToPage(
        currentPage + 1,
        duration: Duration(milliseconds: 100),
        curve: Curves.linear,
      );
    }
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 100,
      ),
      height: 10,
      width: (currentPage == pageNo) ? 20 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: (currentPage == pageNo) ? Colors.orange : Colors.grey,
      ),
    );
  }

  Column onBoardPage(String img, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(35.0),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("asset/images/$img.png"))),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "roboto",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text",
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
