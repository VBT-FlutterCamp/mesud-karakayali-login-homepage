import 'dart:convert';

import '../model/todos_model.dart';
import 'package:http/http.dart' as http;

class TodosService{

  
  Future get getFetchTodo=>_getFetchTodo();

  Future<List<Todos>> _getFetchTodo()async{
    var baseurl = "https://jsonplaceholder.typicode.com/";
    var end = "todos";
    var response = await http.get(Uri.parse(baseurl+end));
    if(response.statusCode==200){
      List<Todos> list =[];
      list=todosFromJson(response.body);
      print(list[1].id.toString()+"asdasdadasdasdasd");
      return list;
    }else{
       throw Exception("data not found");
    }
   
    
    
  }

  Future<List<Todos>> gettFetchTodo()async{
    var baseurl = "https://jsonplaceholder.typicode.com/";
    var end = "todos";
    var response = await http.get(Uri.parse(baseurl+end));
    if(response.statusCode==200){
      
      var decoded =jsonDecode(response.body);
      return (decoded as List).map((e) => Todos.fromJson(e)).toList();
    }else{
       throw Exception("data not found");
    }
   
    
    
  }
}