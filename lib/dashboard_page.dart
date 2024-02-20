import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 直接返回 Container 作为页面内容
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60, top: 40),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.red, Colors.black54],
          center: Alignment.bottomCenter,
          radius: 2.3,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2.0, 1.0),
            blurRadius: 7.0,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              alignment: Alignment.center,
              textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)),
              backgroundColor: MaterialStateProperty.all(const Color(0xFFC5C5C5)),
              minimumSize: MaterialStateProperty.all(const Size(310, 80)),
            ),
            onPressed: () {},
            child: const Text('Property'),
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)),
              backgroundColor: MaterialStateProperty.all(const Color(0xFFC5C5C5)),
              minimumSize: MaterialStateProperty.all(const Size(310, 80)),
            ),
            onPressed: () {},
            child: const Text('Leads'),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                  minimumSize: MaterialStateProperty.all(const Size(52, 140)),
                ),
                onPressed: () {},
                child: const Text('Market\nTransactions'),
              ),
              const SizedBox(width: 17),
              ElevatedButton(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                  minimumSize: MaterialStateProperty.all(const Size(52, 140)),
                ),
                onPressed: () {},
                child: const Text('Company\nTransactions'),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
              backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
              minimumSize: MaterialStateProperty.all(const Size(310, 80)),
            ),
            onPressed: () {},
            child: const Text('Compare'),
          ),
        ],
      ),
    );
  }
}
