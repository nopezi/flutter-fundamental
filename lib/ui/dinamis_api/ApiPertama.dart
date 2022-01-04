import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/api_list.dart';
import 'package:lumen_flutter/ui/data/user.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiPertama extends StatefulWidget {
  @override
  _ApiPertamaState createState() => _ApiPertamaState();
}

class _ApiPertamaState extends State<ApiPertama> {
  List<DataUserCoba> _data;

  Future<String> cobaData() async {
    var response =
        await http.get(APIS.api_coba, headers: {"Accept": "application/json"});

    setState(() {
      List hasil = json.decode(response.body);
      _data = hasil.map((data) => DataUserCoba.fromJsonMap(data)).toList();
    });
    // print(_data);
  }

  Future<String> cobaAuth() async {
    String username = 'admin';
    String password = 'admin';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    Map kepala = {
      'content-type': 'application/json',
      'accept': 'application/json',
      'authorization': basicAuth
    };
    // var response =
    //     await http.get(APIS.profile, headers: {'authorization': basicAuth});
    http.Response r = await http.get(APIS.profile, headers: kepala);
    // print('response');
  }

  @override
  void initState() {
    super.initState();
    cobaData();
    // cobaAuth();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Pertama Get Tanpa Auth"),
      ),
      body: ListView.builder(
        itemCount: _data == null ? 0 : _data.length,
        itemBuilder: (context, index) {
          final item = _data[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyan,
            ),
            title: Text(item.name),
            subtitle: Text(item.username),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}
