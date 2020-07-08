import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key key,
    @required this.formState,
    @required this.onPressed
  }) : super(key: key);

  final GlobalKey<FormState> formState;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 23.0),
      child: MaterialButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text("Login"),
        onPressed: () {
          if (formState.currentState.validate()) {
            print("Okey!");
          } else {
            print("Error");
            onPressed();
          }
        },
      ),
    );
  }
}
