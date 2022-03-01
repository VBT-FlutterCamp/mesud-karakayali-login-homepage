library user_view_body;

import 'package:flutter/material.dart';

import 'package:vbt_sample_project/core/base/base_view.dart';
import 'package:vbt_sample_project/feature/httpservice/viewmodel/user_view_model.dart';

import '../../../core/constants/strings/photo_view_strings.dart';
import 'user_view_body.dart';
part 'user_view_body.dart';


class HttpServiceView extends StatelessWidget {
  
  const HttpServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (BuildContext context,UserViewModel viewModel)=>Scaffold(
        appBar: AppBar(title: Text("MVVM USER")),
        body: SafeArea(
        maintainBottomViewPadding: true,
        child: ListView.builder(
            itemCount: viewModel.userList.length,
            itemBuilder: (context, index) {
              var companyName = viewModel.userList[index].company?.name;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(viewModel.userList[index].name.toString()),
                    subtitle: companyName != null
                        ? Text((companyName))
                        : Text(PhotoViewStrings().nullInfo),
                    leading: CircleAvatar(
                      child: Text(
                        viewModel.userList[index].id.toString(),
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              );
            })),
      );
       viewModel: UserViewModel,
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },);
  }
}