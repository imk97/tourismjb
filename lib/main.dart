import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          foregroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light),
        ),
      ),
      home: const MyHomePage(title: 'Tourism'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(
        //   widget.title,
        //   style: const TextStyle(color: Colors.black),
        // ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.doorbell),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Service'),
              leading: Icon(Icons.headphones),
            ),
            ListTile(
              title: Text('Utilities'),
              leading: Icon(Icons.miscellaneous_services),
            ),
            ListTile(
              title: Text('Market Place'),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text('Points'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Current Converter'),
              leading: Icon(Icons.currency_exchange),
            ),
            ListTile(
              title: Text('Muslim Prayer Time'),
              leading: Icon(Icons.mosque),
            ),
            ListTile(
              title: Text('Change Language'),
              leading: Icon(Icons.language),
            ),
            ListTile(
              title: Text('Virtual Assistance'),
              leading: Icon(Icons.assistant),
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: () {}, icon: Image.asset('assets/mosque.png'), iconSize: 50.0)),
                    const Text('Prayer Time'),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: () {}, icon: Image.network('https://t3.ftcdn.net/jpg/03/50/46/00/360_F_350460096_X3sNrpG9THM3XM7UPBocxBcRL15fHc9f.jpg'), iconSize: 50.0)),
                    const Text('Qiblat Direction'),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: (){}, icon: Image.network('https://cdn-icons-png.flaticon.com/512/7321/7321065.png'), iconSize: 50.0,)),
                    const Text('Dua'),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: (){}, icon: Image.asset(''), iconSize: 50.0,)),
                    const Text('data'),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: () {}, icon: Image.asset(''), iconSize: 50.0,)),
                    const Text('data'),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: IconButton(onPressed: () {}, icon: Image.asset(''), iconSize: 50.0,)),
                    const Text('data'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feed_sharp,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more,
            ),
            label: 'More',
          )
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
