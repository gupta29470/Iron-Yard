import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/home_page.dart';
import 'package:iron_shop_ui/screens/pick_up_time_page.dart';
import 'package:iron_shop_ui/widgets/StyleScheme.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderPageStateful(),
    );
  }
}

class OrderPageStateful extends StatefulWidget {
  @override
  _OrderPageStatefulState createState() => _OrderPageStatefulState();
}

class _OrderPageStatefulState extends State<OrderPageStateful> {
  void backToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  void openPickUpTimePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PickUpTimePage(),
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
          onPressed: backToHomePage,
        ),
        title: Text(
          "Select Clothes",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                categoryWidget("man", "Men", true),
                categoryWidget("girl", "Woman", false),
                categoryWidget("child", "Kids", false),
                categoryWidget("oldman", "Others", false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    clothWidget("cloth1", "Trouser", "15"),
                    clothWidget("cloth2", "Jeans", "10"),
                    clothWidget("cloth3", "Jackets", "15"),
                    clothWidget("cloth4", "Shirt", "5"),
                    clothWidget("cloth5", "T-Shirt", "7"),
                    clothWidget("cloth6", "Blazer", "50"),
                    clothWidget("cloth7", "Coats", "40"),
                    clothWidget("cloth8", "Kurta", "15"),
                    clothWidget("cloth9", "Sweater", "17"),
                    clothWidget("cloth1", "Trouser", "15"),
                    clothWidget("cloth2", "Jeans", "10"),
                    clothWidget("cloth3", "Jackets", "15"),
                    clothWidget("cloth4", "Shirt", "5"),
                    clothWidget("cloth5", "T-Shirt", "7"),
                    clothWidget("cloth6", "Blazer", "50"),
                    clothWidget("cloth7", "Coats", "40"),
                    clothWidget("cloth8", "Kurta", "15"),
                    clothWidget("cloth9", "Sweater", "17")
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "Your Basket",
                      style: headingStyle.copyWith(fontSize: 18,),
                    ),
                    Text(
                      "7 Items added",
                      style: headingStyle.copyWith(fontSize: 16,),
                    ),
                  ],
                ),
                Text(
                  "\$200",
                  style: headingStyle.copyWith(fontSize: 18,),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: openPickUpTimePage,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                    colors: [Color(0xfff3953b), Color(0xffe57509)],
                    stops: [0, 1],
                  ),
                ),
                child: Center(
                  child: Text(
                    "SELECT DATE & TIME",
                    style: contentStyle.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Column categoryWidget(String img, String name, bool isActive) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: (isActive) ? null : Colors.grey.withOpacity(0.3),
            gradient: (isActive)
                ? LinearGradient(
                    colors: [Color(0xfff3953b), Color(0xffe57509)],
                    stops: [0, 1],
                  )
                : null,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/$img.png'),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: headingStyle.copyWith(fontSize: 15),
        ),
      ],
    );
  }

  Container clothWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/$img.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: headingStyle.copyWith(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "\$$price",
                      style: headingStyle.copyWith(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Add Note",
                      style: contentStyle.copyWith(
                        color: Colors.orange,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                Text(
                  "\$45",
                  style: headingStyle.copyWith(fontSize: 18),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xfff3953b), Color(0xffe57509)],
                            stops: [0, 1],
                          ),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "-",
                          style: headingStyle.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      child: Center(
                        child: Text(
                          "1",
                          style: headingStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xfff3953b), Color(0xffe57509)],
                            stops: [0, 1],
                          ),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "+",
                          style: headingStyle.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.75,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
