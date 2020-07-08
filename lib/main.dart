import 'package:flutter/material.dart';

import 'package:flutter_login/views/login_view.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginView(),
    );
  }
}
