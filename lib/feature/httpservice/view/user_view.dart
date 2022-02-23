import 'package:flutter/material.dart';

import 'user_view_body.dart';

class HttpServiceView extends StatelessWidget {
  const HttpServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HTTP SERVİCE"),),
      body: HttpServiceViewBody(),

    );
  }
}