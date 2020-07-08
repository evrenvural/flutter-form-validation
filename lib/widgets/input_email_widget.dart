import 'package:flutter/material.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        labelText: "E-mail",
      ),
      validator: (value) {
        return value.contains(RegExp(r'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}'))
            ? null
            : "Invalid E-mail";
      },
    );
  }
}
