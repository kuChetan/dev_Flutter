import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(appBar: AppBar(
          title: Center(child: Text('My Card',
          style: TextStyle(
            // To add custom fonts you need to create a folder inside the Project folder, download the font .ttl file and store the file inside the fonts folder. Then go to pubspec.yaml and add the fonts catagory under the flutter attribute.
            fontFamily: 'Pacifico',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
          backgroundColor: Color.fromARGB(255, 153, 174, 255),
        ),
        backgroundColor: Color.fromARGB(255, 200, 203, 237),
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('images/user.png') ,
            ),
            Center(
              child: Text('Chetan Kumar Sahu',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 60.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'ShantellSans',
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.amber[700],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone_android_outlined,
                  color: Colors.amber,
                ),
                title: Text(
                  '+91 9658969959',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontFamily: 'ShantellSans',
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail_outline,
                  color: Colors.amber,
                ),
                title: Text(
                  'ckumarsahu.699@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontFamily: 'ShantellSans',
                    fontSize: 30.0,
                  ),
                ),
              ),
            )
          ],
        ),),
         ),
      );
  }
}