import 'dart:convert';

import 'package:vbt_sample_project/feature/httpservice/model/users_model.dart';
import 'package:http/http.dart' as http;
import 'package:vexana/vexana.dart';


abstract class IUserService{

final INetworkManager networkManager;
IUserService(this.networkManager);
Future<List<Users>?> getFetch();

}
class UserService extends IUserService {
  UserService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<Users>?> getFetch() async{
   final response= await networkManager.send<Users,List<Users>>('users', parseModel: Users(), method: RequestType.GET);
   return response.data;
  }
}

  
  
  
  
  // Future<List<Users>> _getFetchUsers()async{
  //   var baseurl = "https://jsonplaceholder.typicode.com/";
  //   var end = "users";
  //   var response = await http.get(Uri.parse(baseurl+end));
  //   if(response.statusCode==200){
  //     List<Users> list =[];
  //     list=usersFromJson(response.body);
  //     return list;
  //   }else{
  //      throw Exception("data not found");
  //   }
   
    
    
  // }
  
