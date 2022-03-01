import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:vbt_sample_project/feature/httpservice/service/user_service.dart';

import '../../../core/base/baseview_model.dart';
import '../model/users_model.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store,BaseViewModel{
late IUserService userService;
  @observable
  List<Users> userList = [];
  


  @action
  Future<void> getFetch() async {
    userList = (await UserService.getFetch())!;
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {
    userService = UserService(networkManager);
  }
}