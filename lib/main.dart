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
    TextEditingController conBil1 = TextEditingController();
    TextEditingController conBil2 = TextEditingController();
    TextEditingController conhasil = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16),
            TextField(
              controller: conBil1,
              decoration: InputDecoration(
                hintText: 'ANGKA PERTAMA',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: conBil2,
              decoration: InputDecoration(
                hintText: 'ANGKA KEDUA',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: conhasil,
              decoration: InputDecoration(
                hintText: 'HASIL',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double bilangan1 = double.parse(conBil1.text);
                double bilangan2 = double.parse(conBil2.text);
                double hasil = bilangan1 + bilangan2;

                conhasil.text = hasil.toString();
              },
              child: Text('Tambah'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double bilangan1 = double.parse(conBil1.text);
                double bilangan2 = double.parse(conBil2.text);
                double hasil = bilangan1 - bilangan2;

                conhasil.text = hasil.toString();
              },
              child: Text('Pengurangan'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double bilangan1 = double.parse(conBil1.text);
                double bilangan2 = double.parse(conBil2.text);
                double hasil = bilangan1 * bilangan2;

                conhasil.text = hasil.toString();
              },
              child: Text('Perkalian'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double bilangan1 = double.parse(conBil1.text);
                double bilangan2 = double.parse(conBil2.text);
                double hasil = bilangan1 / bilangan2;

                conhasil.text = hasil.toString();
              },
              child: Text('Pembagian'),
            ),
          ],
        ),
      ),
    );
  }
}
