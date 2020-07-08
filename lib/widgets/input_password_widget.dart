import 'package:flutter/material.dart';

class InputPasswordWidget extends StatefulWidget {
  InputPasswordWidget({Key key}) : super(key: key);

  @override
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.vpn_key),
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            )),
        validator: (value) {
          return value.length > 5
              ? null
              : "Password must be at least 6 characters";
        },
        obscureText: obscureText,
      ),
    );
  }
}
