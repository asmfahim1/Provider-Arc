import 'package:flutter/material.dart';
import 'package:http/http.dart';


class AuthProvider with ChangeNotifier {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }


  bool _toggle = false;
  bool get toggle => _toggle;

  setToggle(){
    _toggle = !_toggle;
    notifyListeners();
  }


  void login() async{
    setLoading(true);
    try{
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
        body:{
          "email" : emailController.text,
          "password" : passwordController.text,
        }
      );
      setLoading(false);
      if(response.statusCode == 200){

        print('login Successful : ${response.statusCode}');

      }else{
        print('Failed to login : ${response.statusCode}');
      }

    }catch(error){
      setLoading(false);
      print('==========$error========');
    }
  }

}