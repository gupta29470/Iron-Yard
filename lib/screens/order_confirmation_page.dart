import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/pick_up_time_page.dart';
import 'package:iron_shop_ui/screens/track_order_page.dart';
import 'package:iron_shop_ui/widgets/StyleScheme.dart';

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderConfirmationPageStateful(),
    );
  }
}

class OrderConfirmationPageStateful extends StatefulWidget {
  @override
  _OrderConfirmationPageStatefulState createState() =>
      _OrderConfirmationPageStatefulState();
}

class _OrderConfirmationPageStatefulState
    extends State<OrderConfirmationPageStateful> {
  void openTrackOrderPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrackOrderPage(),
      ),
    );
  }

  void backToPickUpDatePage() {
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
          onPressed: backToPickUpDatePage,
        ),
        title: Text(
          "Order Confirmed",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/onBoard2.png'),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Thank you for choosing us!",
              style: headingStyle,
            ),
            Text(
              "Your oder has been placed and we will pick up your clothes on time!",
              style: contentStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            buildContents("Order ID", "7896642"),
            divider(),
            buildContents("Clothes Count", "7"),
            divider(),
            buildContents("Final Amount", "225"),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick up Date & Time",
                  style: headingStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Wednesday, 07 Aug, 2020. Between 10:00 AM & 12:00 PM",
                  style: contentStyle.copyWith(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: headingStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "\$\$\$",
                  style: headingStyle.copyWith(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: openTrackOrderPage,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
                    style: contentStyle.copyWith(
                      color: Colors.white,
                      fontSize: 18,
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

  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.grey,
    );
  }

  Row buildContents(String text, String digits) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: headingStyle.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          digits,
          style: headingStyle.copyWith(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
