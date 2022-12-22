import 'package:cinema/ImagesConsts.dart';
import 'package:cinema/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpIcons extends StatelessWidget {
  const SignUpIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(ImagesConsts.facebookIcon),
      SvgPicture.asset(ImagesConsts.googleIcon),
      SvgPicture.asset(ImagesConsts.appleIcon),
    ]);
  }
}

class SignInTextFields extends StatefulWidget {
  const SignInTextFields({Key? key}) : super(key: key);

  @override
  State<SignInTextFields> createState() => _SignInTextFieldsState();
}

class _SignInTextFieldsState extends State<SignInTextFields> {
  final usernameTextFieldStyle = const InputDecoration(
    prefixIcon: Icon(Icons.person, color: Colors.red),
    hintText: "Email",
    hintStyle: TextStyle(
      color: Colors.white70,
      fontSize: 16,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
  );

  final passwordTextFieldStyle = const InputDecoration(
    prefixIcon: Icon(Icons.lock, color: Colors.red),
    hintText: "Password",
    hintStyle: TextStyle(
      color: Colors.white70,
      fontSize: 16,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
  );

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: usernameTextFieldStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              style: const TextStyle(color: Colors.white),
              decoration: passwordTextFieldStyle,
            ),
            Row(
              children: const [
                MyCustomCheckBox(),
                Text("Remember me", style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 360,
              child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue.shade800),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white)),
                  child: const Text("Sign Up")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 90,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Text("or continue with",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    height: 1,
                    width: 90,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      ImagesConsts.facebookIcon,
                      height: 30,
                      width: 30,
                    ),
                    SvgPicture.asset(ImagesConsts.googleIcon,
                        height: 30, width: 30),
                    SvgPicture.asset(ImagesConsts.appleIcon,
                        height: 30, width: 30),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:   [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Sign In",
                  style: TextStyle(color: Colors.blue.shade800),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
