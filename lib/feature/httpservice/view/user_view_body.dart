import 'package:flutter/material.dart';
import 'package:vbt_sample_project/core/constants/strings/photo_view_strings.dart';
import 'package:vbt_sample_project/feature/httpservice/model/users_model.dart';
import 'package:vbt_sample_project/feature/httpservice/service/user_service.dart';

class HttpServiceViewBody extends StatefulWidget {
  const HttpServiceViewBody({Key? key}) : super(key: key);

  @override
  _HttpServiceViewBodyState createState() => _HttpServiceViewBodyState();
}

class _HttpServiceViewBodyState extends State<HttpServiceViewBody> {
  final UserService _service = UserService();
  List<Users> _userslist = [];

  _init() async {
    _userslist = await _service.getFetch;
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        maintainBottomViewPadding: true,
        child: ListView.builder(
            itemCount: _userslist.length,
            itemBuilder: (context, index) {
              var companyName = _userslist[index].company?.name;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(_userslist[index].name.toString()),
                    subtitle: companyName != null
                        ? Text((companyName))
                        : Text(PhotoViewStrings().nullInfo),
                    leading: CircleAvatar(
                      child: Text(
                        _userslist[index].id.toString(),
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
