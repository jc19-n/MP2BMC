import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Kawawang Nathan Santos",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Kawawang Nathan Santos'),
              backgroundColor: Colors.grey,
            ),

            backgroundColor: Colors.greenAccent,
            body:Builder(builder:(context)=> Center (
              child: Column(children: [
                Text(
                  'walang magawa!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),

                Text(
                  'Discover the Nathman',
                  style:
                      TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
                ),
                Image.network('https://th.bing.com/th/id/OIP.qAvH2X4ScLetPddWcJYA9gHaEK?w=1280&h=720&rs=1&pid=ImgDetMain',
                height: 350,
                ),

                ElevatedButton(
                  child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                )

              ]),
            ))));
  }
} //end line of my class

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at gumana na yung kay nathan.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),

            )
          ], //action
        ); //return
      } //builder
  ); //show dialog
} //void contactus
