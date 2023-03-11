import 'package:flutter/material.dart';

class BelajarStatefull extends StatefulWidget {
  @override
  _BelajarStatefullState createState() => _BelajarStatefullState();
}

class _BelajarStatefullState extends State<BelajarStatefull> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stateful widget Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "statefull widget biasa digunakan untuk page yang berisi data yang dapat berubah rubah"),
            Text(number.toString()),
            ElevatedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tekanTombol,
            )
          ],
        ),
      ),
    );
  }
}
