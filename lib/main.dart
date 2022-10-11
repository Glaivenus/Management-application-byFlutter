import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'management application',
      theme: ThemeData(
        brightness:Brightness.light,
        primarySwatch: Colors.red,
        primaryColor: const Color(0xFF212121),
        canvasColor: const Color(0xFF303030),
        ////fontFamily: 'Univers',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading:
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset('images/logo2.png',
              fit: BoxFit.cover,
              ),
          ),
          leadingWidth: 210,
          title: Text('Hi,     Users'),
          titleSpacing: 10,









          bottom: TabBar(
          tabs:const [//contents
            Tab(text: 'Dashboard',),
            Tab(text: 'Documents',),
            Tab(text: 'Appointmens',),
          ],




          ),
      ),

      body:
      Container(
        margin: const EdgeInsets.only(top: 30, left: 15),
        padding: const EdgeInsets.only(left:30, right:30,bottom: 30, top: 10),
        decoration: const BoxDecoration(
            gradient: RadialGradient( //Background Gradient
                colors: [Colors.red, Colors.white70],
                center: Alignment.bottomCenter,
                radius: 1.6
            ),
            borderRadius:BorderRadius.all(Radius.circular(15)),
            boxShadow: [ //Shadow
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2.0, 1.0),
                  blurRadius: 7.0
              )
            ]
        ),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            const Text('Dashboard', textScaleFactor: 1.5, textAlign: TextAlign.left, style: TextStyle(color:Colors.black,)),
//1-1
           ElevatedButton(
            style: ButtonStyle(
              alignment: Alignment.center,
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25,
                //TODO: fontFamily: 'Univers'
            )),
            backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
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
            backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                minimumSize: MaterialStateProperty.all(const Size(310, 80))
          ),
          onPressed: (){},
           child: const Text('Leads'),

        ),
//1-3
            Spacer(),
          Row(

            children: <Widget>[
              ElevatedButton(
//1-3-1
                style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 12.5)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                    minimumSize: MaterialStateProperty.all(const Size(52, 80))
                ),
                onPressed: (){},
//1-3-1
                child: const Text('Market Transactions'),
              ),
            const SizedBox(width: 17,),
//1-3-2
              ElevatedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 12.5)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                    minimumSize: MaterialStateProperty.all(const Size(52, 80))

                ),
                onPressed: (){},
                child: const Text('Company Transactions'),
              ),
      ],
              ),
            Spacer(),
//1-4
            ElevatedButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 25)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
                  minimumSize: MaterialStateProperty.all(const Size(310, 80))
              ),
              onPressed: (){},
              child: const Text('Compare'),

            ),
            ],
       ),

        ),
        drawer: const MyDrawerWidget(),
      ),
    );
    }
    void buttonPressed(){}

    }

//drawer
class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(('https://i.pinimg.com/736x/f3/53/55/f353553805d7924c68bec227ed7d1af8.jpg'),),
              ),
            ),


          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Search'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Profile'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Favorite'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('My Website Listing'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),



        ],
      ),
    );
  }
}


class AppBarActionsShare extends StatelessWidget {
  const AppBarActionsShare({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.person_off,
        ),
        onPressed: () {
          const snackBar =
          SnackBar(content: Text('You selected the Action: profile'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
  }
}