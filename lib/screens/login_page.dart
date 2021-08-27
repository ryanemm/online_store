import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';
import 'package:online_store/widgets/custom_button.dart';
import 'package:online_store/widgets/custom_input_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Text(
                "Welcome User.\nLogin to your account.",
                textAlign: TextAlign.center,
                style: Constants.boldHeading,
              ),
            ),
            Column(children: [
              CustomInputField(),
              CustomInputField(),
              CustomButton(
                  text: "Login", outlineButton: false, onPressed: () {}),
            ]),
            CustomButton(
              text: "Create New Account",
              outlineButton: true,
              onPressed: () {
                print("Clicked the create account button");
              },
            )
          ],
        ),
      ),
    ));
  }
}
