import 'package:flutter/material.dart';

import 'package:flutter_login/widgets/form_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: FormWidget(),
      ),
    );
  }
}
