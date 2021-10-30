import 'package:flutter/material.dart';
import 'package:hello_flutter/API/auth_api.dart';
import 'package:hello_flutter/screens/sign_up.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _fromKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                ),
                validator: (val) {
                  if (val == null) {
                    return "email shouldn't be null";
                  } else if (val.isEmpty) {
                    return "email shouldn't be empty";
                  }

                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
                validator: (val) {
                  if (val == null) {
                    return "pass can't be null";
                  } else if (val.isEmpty) {
                    return "pass can't be empty";
                  } else if (val.length >= 6) {
                    return "should be longer than 6";
                  }

                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_fromKey.currentState!.validate()) {
                    try {
                      await AuthApi()
                          .logIn(emailController.text, passwordController.text);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    } catch (e) {
                      print(e);
                    }
                  }
                },
                child: Text('Login'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: Text('SignUp')),
            ],
          ),
        ),
      ),
    );
  }
}
