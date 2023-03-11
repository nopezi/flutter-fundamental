// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lumen_flutter/core/services/auth_services.dart';
import 'package:lumen_flutter/core/utils/toast_utils.dart';
import 'package:lumen_flutter/ui/widgets/input_field.dart';
import 'package:lumen_flutter/ui/widgets/primary_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lumen_flutter/ui/coba/nyoba.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: LoginBody(),
        ),
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getPref();
  }

  savePref(String username, String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('username', username);
      pref.setString('email', email);
    });
  }

  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final username = pref.getString('username');
    if (username != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, "/profile", (Route<dynamic> routes) => false);
    }
  }

  Future<void> prosesLogin() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      ToastUtils.show("Check Login ...");

      Map<String, dynamic> data = {
        "username": usernameController.text,
        "password": passwordController.text
      };

      // perintah cek ke rest api
      var response = await AuthServices.login(data);

      print("Status:" + response.status.toString());
      print("message:" + response.message.toString());

      if (response.status == 200) {
        ToastUtils.show(
            "Welcome : " + response.data.username.toString().toLowerCase());

        savePref(
            usernameController.text.toString(), response.data.email.toString());

        Navigator.pushNamedAndRemoveUntil(
            context, "/profile", (Route<dynamic> routes) => false);
      } else {
        ToastUtils.show(response.message);
      }
    } else {
      ToastUtils.show("Please Input All Field");
    }
  }

  @override
  Widget build(BuildContext context) {
    final header = //bagian header
        Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      color: Colors.lightBlue,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.vpn_key,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Login Area",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );

    final formUsername = InputField(
      action: TextInputAction.done,
      type: TextInputType.text,
      controller: usernameController,
      hinText: "Username",
    );

    final formPassword = InputField(
      action: TextInputAction.done,
      type: TextInputType.text,
      controller: passwordController,
      hinText: "Password",
    );

    final tombolNyoba = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(NyobaPage.tag);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NyobaPage()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'Demo Menus',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final padding = Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: <Widget>[
          formUsername,
          SizedBox(
            height: 10,
          ),
          formPassword,
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: PrimaryButton(
              color: Colors.lightBlue,
              text: "Login",
              onClick: () {},
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: PrimaryButton(
              color: Colors.grey,
              text: "Register",
              onClick: () {},
            ),
          ),
          SizedBox(
            height: 15,
          ),
          tombolNyoba,
        ],
      ),
    );

    return Column(
      children: <Widget>[header, padding],
    );
  }
}
