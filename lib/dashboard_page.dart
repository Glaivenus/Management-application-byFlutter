import 'package:flutter/material.dart';

// DashboardPage 定义
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container(

      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left:30, right:30,bottom: 60, top: 40),
      decoration: const BoxDecoration(

          gradient: RadialGradient( //Background Gradient

            colors: [Colors.red, Colors.black54],
            center: Alignment.bottomCenter,
            radius: 2.3,
          ),
          borderRadius:BorderRadius.all(Radius.circular(15)),
          boxShadow: [ //Shadow
            BoxShadow(
                color: Colors.black38,
                offset: Offset(2.0, 1.0),
                blurRadius: 7.0
            )
          ]
      ),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          // const Text('Dashboard', textScaleFactor: 1.5, textAlign: TextAlign.left, style: TextStyle(color:Colors.red)),

//1-1
          ElevatedButton(
            style: ButtonStyle(
              alignment: Alignment.center,
              textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25,
                //TODO: fontFamily: 'Univers'
              )),
              backgroundColor: MaterialStateProperty.all(const Color(0xFFC5C5C5)),
              minimumSize: MaterialStateProperty.all(const Size(310, 80)),

            ),
            onPressed: (){},
            child: const Text('Property'),

          ),

          Spacer(),
//1-2
          ElevatedButton(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)),
                backgroundColor: MaterialStateProperty.all(const Color(0xFFC5C5C5)),
                minimumSize: MaterialStateProperty.all(const Size(310, 80))
            ),
            onPressed: (){},
            child: const Text('Leads',),

          ),
//1-3
          Spacer(),
          Row(

            children: <Widget>[
              ElevatedButton(
//1-3-1
                style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                    minimumSize: MaterialStateProperty.all(const Size(52, 140))
                ),
                onPressed: (){},
//1-3-1
                child: const Text('Market\nTransactions',),
              ),
              const SizedBox(width: 17,),
//1-3-2
              ElevatedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                    minimumSize: MaterialStateProperty.all(const Size(52, 140))

                ),
                onPressed: (){},
                child: const Text('Company\nTransactions'),
              ),
            ],
          ),
          Spacer(),
//1-4
          ElevatedButton(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                minimumSize: MaterialStateProperty.all(const Size(310, 80))
            ),
            onPressed: (){},
            child: const Text('Compare'),

          ),
        ],
      ),

    ),

    return Center(
      child: Text('Dashboard', style: TextStyle(fontSize: 24)),
    );
  }
}
