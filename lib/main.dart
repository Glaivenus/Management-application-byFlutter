import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'documents_page.dart';
import 'appointments_page.dart';

void main() {
  runApp(const MyApp());
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
        //fontFamily: 'Univers',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
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
            Tab(text: 'Appointments',),

          ],




          ),
      ),


      body: TabBarView(
          children: [
          DashboardPage(), // 对应 Dashboard 标签的页面
          DocumentsPage(), // 对应 Documents 标签的页面
          AppointmentsPage(), // 对应 Appointments 标签的页面
      ],
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

