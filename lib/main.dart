import 'package:cinema/ui/auth/sign_up.dart';
import 'package:cinema/ui/mainscreen/MainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/SignUp': (context) => const SignIn(),
          '/Main': (context) => const MainScreen()
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          ),
          bottomNavigationBarTheme: const  BottomNavigationBarThemeData(backgroundColor: Colors.red,selectedItemColor: Colors.white),
          primarySwatch: Colors.red,
        ),
        home: const MainScreen());
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "images/logo.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                "Create your account",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              const SignInTextFields()
              //const Icon(Icons.read_more)
            ],
          ),
        ),
      ),
    );
  }
}
