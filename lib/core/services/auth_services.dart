import 'package:dio/dio.dart';
import '../config/endpoint.dart';
import '../models/auth_model.dart';
import '../utils/toast_utils.dart';

class AuthServices {
  static Dio dio = new Dio();

  static Future<auth_model> register(Map registerData)async{
    try{
      var response = await dio.post(
        Endpoint.register,
        data: FormData.fromMap(registerData),
        options: Options(headers: {"Accept": "application/json"})
      );

      return auth_model.fromJson(response.data);
    }catch(e){
      print("ERR: "+ e.toString());
      ToastUtils.show("Please check your connection");
    }
  }

  static Future<auth_model> login(Map loginData)async{
    try{
      var response = await dio.post(
          Endpoint.login,
          data: FormData.fromMap(loginData),
          options: Options(headers: {"Accept": "application/json"})
      );

      return auth_model.fromJson(response.data);
    }catch(e){
      print("ERR: "+ e.toString());
      ToastUtils.show("Please check your connection");
    }
  }

}