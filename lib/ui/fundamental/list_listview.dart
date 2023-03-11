import 'package:flutter/material.dart';

class ListListView extends StatefulWidget {
  @override
  _ListListViewState createState() => _ListListViewState();
}

class _ListListViewState extends State<ListListView> {
  List<Widget> widgets = [];
  int counter = 1;

  // _ListListViewState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       "ini data ke- " + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List dan List View"),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "data yang ke - " + counter.toString(),
                        style: TextStyle(fontSize: 35),
                      ));
                      counter++;
                    });
                  }),
              ElevatedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  }),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
