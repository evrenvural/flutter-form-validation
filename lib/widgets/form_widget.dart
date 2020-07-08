import 'package:flutter/material.dart';

import 'package:flutter_login/widgets/input_email_widget.dart';
import 'package:flutter_login/widgets/input_password_widget.dart';
import 'package:flutter_login/widgets/login_button_widget.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState> formState = GlobalKey();
  bool isAutoValidate = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      autovalidate: isAutoValidate,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputEmailWidget(),
          InputPasswordWidget(),
          LoginButtonWidget(
              formState: formState,
              onPressed: () {
                setState(() {
                  isAutoValidate = true;
                });
              }),
        ],
      ),
    );
  }
}
