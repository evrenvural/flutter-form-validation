import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formState = GlobalKey();
  bool isAutoValidate = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Form(
          key: formState,
          autovalidate: isAutoValidate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "E-mail",
                ),
                validator: (value) {
                  return value.contains(
                          RegExp(r'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}'))
                      ? null
                      : "Invalid E-mail";
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    )),
                validator: (value) {
                  return value.length > 5
                      ? null
                      : "Password must be at least 5 characters";
                },
                obscureText: obscureText,
              ),
              Container(
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
                      setState(() {
                        isAutoValidate = true;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
