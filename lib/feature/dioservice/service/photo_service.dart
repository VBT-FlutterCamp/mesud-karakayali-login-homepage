import 'package:dio/dio.dart' ;
import 'package:vbt_sample_project/feature/dioservice/model/photo_model.dart';
import 'package:vbt_sample_project/feature/httpservice/model/users_model.dart';

class PhotoService{
  String API = "https://jsonplaceholder.typicode.com/photos";
  Future<List<PhotoModel>> _getFetchPhoto()async{
    try{
      var response=await Dio().get(API);
      List<PhotoModel> list=[];
      if(response.statusCode==200){
        
        list = (response.data as List).map((e) =>PhotoModel.fromJson(e) ).toList();
        
      }
      return list;
    }on DioError catch (e) {
      return Future.error(e.message);
    }
  }
  Future<List<PhotoModel>> get getPhotosData=>_getFetchPhoto();

  
}