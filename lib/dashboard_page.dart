import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 直接返回 Container 作为页面内容
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60, top: 40),
      // decoration: const BoxDecoration(
      //   gradient: RadialGradient(
      //     colors: [Colors.red, Colors.black54],
      //     center: Alignment.bottomCenter,
      //     radius: 2.3,
      //   ),
      //   borderRadius: BorderRadius.all(Radius.circular(15)),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black38,
      //       offset: Offset(2.0, 1.0),
      //       blurRadius: 7.0,
      //     ),
      //   ],
      // ),

      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage("./images/trbg.png"),
        //   fit: BoxFit.cover,
        // ),
      ),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              // 设置线性渐变背景
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: () {},
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF090909), //
                    Color(0xFF454545),  //
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(minHeight: 80, minWidth: double.infinity),
                child: const Text(

                  'Property',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),


          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              // 设置线性渐变背景
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: () {},
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF090909), //
                    Color(0xFF454545),  //
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(minHeight: 80, minWidth: double.infinity),
                child: const Text(

                  'Leads',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                  minimumSize: MaterialStateProperty.all(const Size(42, 140)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Market\nTransactions',
                  style: TextStyle(fontSize: 18, color: Colors.grey),),
              ),
              const SizedBox(width: 17),
              ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                  minimumSize: MaterialStateProperty.all(const Size(42, 140)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Company\nTransactions',
                  style: TextStyle(fontSize: 18, color: Colors.grey),),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              // 设置线性渐变背景
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: () {},
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFBFBFB), //
                    Color(0xFFA5A5A5),  //
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(minHeight: 80, minWidth: double.infinity),
                child: const Text(

                  'Compare',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF2F2F2F),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
