
  import 'package:flutter/material.dart';

  class AppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: const Color(0xFF8B1313),

  body: Container(
  child: Column(children: <Widget>[
  renderImageNormal("./images/logo2.png"),
  renderImageRatio(context, "./images/logo2.png"),
  renderImageNormal("./images/logo2.png"),
  renderImageRatio(context, "./images/logo2.png"),
  ]),
  ),
  );
  }

  renderImageNormal(image) {
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
  child: new Image.asset(
  image,
  fit: BoxFit.cover,
  width: 70,
  height: 70,
  ),
  ),
  new SizedBox(
  width: 10,
  ),
  new Expanded(
  child: new Text(
  'Feb 30'
  '\n'
  'Sam'
      '\n'
      '999 Bukit Timah',
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontSize: 15),
  )),
  ],
  ),
  ),
  );
  }

  renderImageRatio(context, image) {
  ///大概是屏幕 6 分之一的宽度
  double itemHeight = MediaQuery.of(context).size.width / 6;

  /// iphone xs max 的比例是 2688 * 1242; 拿到的 size 是 896.0 * 414.0
  double textSize = 15.0 * MediaQuery.of(context).size.width / 414.0;

  /// 注意，这是在 data.textScaleFactor = 1 的情况下
  //var data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

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
  child: new Image.asset(
  image,
  fit: BoxFit.cover,
  height: itemHeight,
  width: itemHeight,
  ),
  ),
  new SizedBox(
  width: 10,
  ),
  new Expanded(
  child: new Text(
    'Feb 31'
        '\n'
        'Raden'
        '\n'
        '666 Cavenagh Road',
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontSize: textSize),
  )),
  ],
  ),
  ),
  );
  }
  }
