import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/Vectorproductarena.png',
            scale: 0.8,
          ),
          const SizedBox(
            width: 700,
            height: 48.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.greenAccent, width: 2.5)),
                contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
                hintText: "E-mail",
                labelText: "E-mail",
                floatingLabelStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.grey[200]),
          ),
          const SizedBox(height: 48.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.greenAccent, width: 2.5)),
              contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
              filled: true,
              hintText: "Password",
              labelText: "Password",
              floatingLabelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.grey[200],
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 44.0),
            width: double.infinity,
            child: RawMaterialButton(
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              fillColor: Colors.greenAccent,
              onPressed: () {},
              child: Text("Log In"),
            ),
          )
        ],
      ),
    );
  }
}
