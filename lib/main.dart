import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
            ),
            Text(
              "YouTube",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1.3),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.videocam, color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.search, color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.person, color: Colors.black54),
          ),
        ],
      ),
      body: Center(
          child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, position) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 200,
                        child: Image.asset(
                    "assets/images/image${position + 1}.jpg",
                    fit: BoxFit.cover
                  ),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 22.0, top: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.account_circle,
                        size: 40.0,
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "Lorem ipsum",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18.0),
                            ),
                          ),
                          Text(
                            "Aliquam consequat sagittis leo vitae mollis.",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.more_vert),
                      flex: 1,
                    )
                  ],
                ),
              )
            ],
          );
        },
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black54), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fire, color: Colors.black54),
              label: "Trending"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions, color: Colors.black54),
              label: "Subscriptions"),
          BottomNavigationBarItem(
              icon: Icon(Icons.email, color: Colors.black54), label: "Inbox"),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder, color: Colors.black54),
              label: "Library"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
