import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/anonymouse_method.dart';
import 'package:lumen_flutter/ui/fundamental/state_full_widget.dart';

class NyobaPage extends StatelessWidget {
  static String tag = 'nyoba';

  @override
  Widget build(BuildContext context) {
    // final heading = Hero(
    //     tag: 'hero',
    //     child: Padding(
    //       padding: EdgeInsets.all(16.0),
    //       child: CircleAvatar(
    //         radius: 72.0,
    //         backgroundColor: Colors.transparent,
    //       ),
    //     ));

    // final welcome = Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Text(
    //     'Selamat Datang',
    //     style: TextStyle(fontSize: 28.0, color: Colors.blue),
    //   ),
    // );

    // final coba = Scaffold(
    //   body: Container(
    //     width: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.all(28.0),
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(colors: [
    //       Colors.blue,
    //       Colors.lightBlueAccent,
    //     ])),
    //     child: Column(
    //       children: <Widget>[heading, welcome],
    //     ),
    //   ),
    // );

    final barAtas = AppBar(
      title: Text("Main Menus"),
    );

    final tombolNyoba = Container(
      width: MediaQuery.of(context).size.width,
      // width: 200,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(NyobaPage.tag);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BelajarStatefull()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'State Full Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolAnonymouseMethod = Container(
      width: MediaQuery.of(context).size.width,
      // width: 200,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(NyobaPage.tag);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => anonymouseMethod()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'Anonymouse Method',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final body = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        // jumlah stop berbanding lurus dengan jumlah warna
        stops: [0.3, 0.6, 0.9],
        colors: [
          Color.fromRGBO(12, 235, 235, 1),
          Color.fromRGBO(32, 227, 178, 1),
          Color.fromRGBO(41, 225, 198, 1),
        ],
      )),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [
                  0.3,
                  0.6,
                  0.9
                ],
                colors: [
                  Color.fromRGBO(12, 235, 235, 1),
                  Color.fromRGBO(32, 227, 178, 1),
                  Color.fromRGBO(41, 225, 198, 1),
                ]),
            boxShadow: []),
        margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            tombolNyoba,
            SizedBox(
              height: 10,
            ),
            tombolAnonymouseMethod,
          ],
        ),
      ),
    );

    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [Text("nyoba halaman")],
    //   ),)

    return Scaffold(
      appBar: barAtas,
      body: body,
    );
  }
}
