import 'package:flutter/material.dart';

void main() {
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(title: "Cars"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.blue,
        ),
        body: new Column(
          children: <Widget>[
            CarWidget("Mercedes", "2025",
                "https://www.motortrend.com/files/6733a83c7703ea00081b7962/000-mercedes-benz-e-class-2025-motortrend-car-of-the-year-alan-muir-design.jpg"),
            CarWidget("Mercedes", "2025",
                "https://www.motortrend.com/files/6733a83c7703ea00081b7962/000-mercedes-benz-e-class-2025-motortrend-car-of-the-year-alan-muir-design.jpg")
          ],
        ));
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc);
  final String make;
  final String model;
  final String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: new Column(
          children: <Widget>[
            Text(
              make,
              style: TextStyle(
                  color: Colors.green,
                  backgroundColor: Colors.black,
                  fontFamily: 'Times New Roman',
                  fontSize: 26),
            ),
            Text(model),
            Image.network(imageSrc),
          ],
        ),
      ),
    );
  }
}
