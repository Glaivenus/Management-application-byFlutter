import 'package:flutter/material.dart';

class AppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            renderImageNormal("./images/logo2.png"),
            renderImageRatio(context, "./images/logo2.png"),
            renderImageNormal("./images/logo2.png"),
            renderImageRatio(context, "./images/logo2.png"),
          ],
        ),
      ),
    );
  }

  Widget renderImageNormal(String image) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Feb 30'
                    '\n'
                    'Sam'
                    '\n'
                    '999 Bukit Timah',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderImageRatio(BuildContext context, String image) {
    double itemHeight = MediaQuery.of(context).size.width / 6;
    double textSize = 15.0 * MediaQuery.of(context).size.width / 414.0;

    return Card(
      margin: EdgeInsets.all(5),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: itemHeight,
                width: itemHeight,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Feb 31'
                    '\n'
                    'Raden'
                    '\n'
                    '666 Cavenagh Road',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: textSize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
