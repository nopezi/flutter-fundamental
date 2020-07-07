import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lumen_flutter/core/utils/toast_utils.dart';
import 'package:lumen_flutter/ui/widgets/primary_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: ProfilBody(),
        ),
      ),
    );
  }
}

class ProfilBody extends StatefulWidget {
  @override
  _ProfilBodyState createState() => _ProfilBodyState();
}

class _ProfilBodyState extends State<ProfilBody> {

  String username, email;

  @override
  void initState() {
    super.initState();
    getPref();
  }

  logout(){
    ToastUtils.show("waiting logout ..");
    savePref();

    Future.delayed(const Duration(microseconds: 2000),(){
      ToastUtils.show("Success logout ...");
      Navigator.pushNamedAndRemoveUntil(context, "/login", (Route<dynamic>routes)=>false);
    });
  }

  savePref()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.remove('username');
      pref.remove('email');
    });
  }

  getPref()async{
    SharedPreferences pref =await SharedPreferences.getInstance();

    setState(() {
      username = pref.getString('username');
      email    = pref.getString('email');
    });

    if(username != null) {

    } else {
      Navigator.pushNamedAndRemoveUntil(context, "/login", (Route<dynamic>routes)=>false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        //bagian header
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/4,
          color: Colors.lightBlue,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Icon(
                  Icons.people_outline,
                  size: 60,
                  color: Colors.white,
                ),
                SizedBox(height: 10,),

                Text(
                  "Profil",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
