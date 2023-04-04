import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Calculator',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Result = 0',
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter first number',
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter last number',
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text('Add'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text('Substract'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text('Multiply'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
              },
              child: Text('Divide'),
            ),
          ],
        ),
      ),
    );
  }
}
