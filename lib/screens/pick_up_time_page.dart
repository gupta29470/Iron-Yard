import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/order_confirmation_page.dart';
import 'package:iron_shop_ui/screens/order_page.dart';
import 'package:iron_shop_ui/widgets/StyleScheme.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PickUpTimePageStateful(),
    );
  }
}

class PickUpTimePageStateful extends StatefulWidget {
  @override
  _PickUpTimePageStatefulState createState() => _PickUpTimePageStatefulState();
}

class _PickUpTimePageStatefulState extends State<PickUpTimePageStateful> {
  void backToOrderPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(),
      ),
    );
  }

  void openOrderConfirmationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderConfirmationPage(),
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
          onPressed: backToOrderPage,
        ),
        title: Text(
          "Select Date & Time",
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pick up Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  dateWidget("Wed", "07 Aug", true),
                  dateWidget("Thu", "08 Aug", false),
                  dateWidget("Fri", "09 Aug", false),
                  dateWidget("Sat", "10 Aug", false),
                  dateWidget("Mon", "12 Aug", false),
                  dateWidget("Tue", "13 Aug", false),
                  dateWidget("Wed", "07 Aug", false),
                  dateWidget("Thu", "08 Aug", false),
                  dateWidget("Fri", "09 Aug", false),
                  dateWidget("Sat", "10 Aug", false),
                  dateWidget("Mon", "12 Aug", false),
                  dateWidget("Tue", "13 Aug", false),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pick up Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", false),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Delivery Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Wed", "10 Aug", true),
                  dateWidget("Thu", "11 Aug", false),
                  dateWidget("Fri", "12 Aug", false),
                  dateWidget("Sat", "13 Aug", false),
                  dateWidget("Mon", "14 Aug", false),
                  dateWidget("Tue", "15 Aug", false),
                  dateWidget("Wed", "10 Aug", false),
                  dateWidget("Thu", "11 Aug", false),
                  dateWidget("Fri", "12 Aug", false),
                  dateWidget("Sat", "13 Aug", false),
                  dateWidget("Mon", "14 Aug", false),
                  dateWidget("Tue", "15 Aug", false)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Delivery Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total Amount Payable",
                  style: headingStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "\$225",
                  style: headingStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: openOrderConfirmationPage,
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
                    "PLACE ORDER",
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

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            date,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
