import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/strings/photo_view_strings.dart';
import 'package:vbt_sample_project/feature/dioservice/model/photo_model.dart';
import 'package:vbt_sample_project/feature/dioservice/service/photo_service.dart';
import 'package:auto_size_text/auto_size_text.dart';
class PhotoViewBody extends StatefulWidget {
  const PhotoViewBody({ Key? key }) : super(key: key);

  @override
  _PhotoViewBodyState createState() => _PhotoViewBodyState();
}

class _PhotoViewBodyState extends State<PhotoViewBody> {
  PhotoService _photoService=PhotoService();
  List<PhotoModel> _photoList=[];
  @override
  init()async{
    _photoList=await _photoService.getPhotosData;
  }
  void initState() {
    super.initState();
    init();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<PhotoModel>>(
        future: _photoService.getPhotosData,
        builder: (context,snapshot){
         if(snapshot.hasData){
           return ListView.builder(
           itemCount: 20,
           itemBuilder: (context,index){

             var satirVerisi =snapshot.data?[index];
           return Card(child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Container(
               height: 100,
               width: MediaQuery.of(context).size.width/4,
               decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(satirVerisi?.thumbnailUrl?? ""))),
             ),
             Text(satirVerisi?.id.toString()??1.toString(),style: TextStyle(fontSize: 30),),
             Container(
               padding: EdgeInsets.only(right: 20),
               width:  MediaQuery.of(context).size.width/2,
               child: AutoSizeText(satirVerisi?.title??PhotoViewStrings().nullInfo,
               style: TextStyle(fontSize: 25),
                maxLines: 2,),
             )
           ],),);
         });
         }
         else if(snapshot.hasError){
           return Text("error");
         }
         else{
           return Center(child:  CircularProgressIndicator(),);
         }
        }),
      
    );
  }
}