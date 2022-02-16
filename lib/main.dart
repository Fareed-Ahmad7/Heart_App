import 'dart:io';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(const MaterialApp(
    title: 'Your title',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/settings': (BuildContext context) => const SettingsPage(),
        },
        home: Scaffold(
          drawer: Drawer(
            backgroundColor: const Color.fromRGBO(255, 173, 198, 1),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(
                  height: 50,
                ),
                // const DrawerHeader(
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //   ),
                //   child: Text('Drawer Header'),
                // ),
                ListTile(
                  title: const Text('settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('farid'),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(255, 173, 198, 1),
            // elevation: 0.0,
          ),
          body: const  Center(
            child: CircleAvatar(
              child: ClipOval(
                child: WebView(
                  
                  zoomEnabled: false,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: 'http://127.0.0.1:5501/html/index.html',
                ),
              ),
            radius: 190,
            ),
          )
        ));
  }
}

  String whoHeart = "";
  String insideHeart = "";
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool changeButton = false;
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 173, 198, 1),
        title: const Text('Settings'),
      ),
      body: Form(
        // key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome with ❤️ by farid",
              style:
                  GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Who's Heart ?",
                  ),
                  onChanged: (value) {
                    whoHeart = value;
                    setState(() {});
                    print('$whoHeart');
                    // print('$name');

                  },
                    // name = whoHeart;
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Who's inside your Heart ?",
                  ),
                  onChanged: (value) {
                    insideHeart = value;
                    setState(() {});
                    print('$insideHeart');
                  },
                ),
                const SizedBox(height: 40),
              ]),
            )
          ],
        ),
      ),
    );
  }
}