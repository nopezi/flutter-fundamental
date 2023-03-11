import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class anonymouseMethod extends StatefulWidget {
  // const anonymouseMethod({Key? key}) : super(key: key);

  @override
  _anonymouseMethodState createState() => _anonymouseMethodState();
}

class _anonymouseMethodState extends State<anonymouseMethod> {
  String pesan = "ini adalah text";

  void tombolDitekan() {
    setState(() {
      pesan = "text setelah tombol di tekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymouse Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pesan),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pesan =
                      "ini adalah text setelah tekan tombol menggunakan anonymouse method";
                });
              },
              child: Text("Tekan saya"),
            )
          ],
        ),
      ),
    );
  }
}
