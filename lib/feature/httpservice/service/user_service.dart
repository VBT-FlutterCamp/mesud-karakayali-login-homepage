import 'dart:convert';

import 'package:vbt_sample_project/feature/httpservice/model/users_model.dart';
import 'package:http/http.dart' as http;
class UserService{

  Future get getFetch=>_getFetchUsers();

  Future<List<Users>> _getFetchUsers()async{
    var baseurl = "https://jsonplaceholder.typicode.com/";
    var end = "users";
    var response = await http.get(Uri.parse(baseurl+end));
    if(response.statusCode==200){
      List<Users> list =[];
      list=usersFromJson(response.body);
      return list;
    }else{
       throw Exception("data not found");
    }
   
    
    
  }
  
}