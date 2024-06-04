import 'package:first/functions/authfunctions.dart';
import 'package:flutter/material.dart';

class AuthenticationWidget extends StatefulWidget {
  const AuthenticationWidget({super.key});

  @override
  State<AuthenticationWidget> createState() => _AuthenticationWidgetState();
}

class _AuthenticationWidgetState extends State<AuthenticationWidget> {
  String emailAddress = '';
  String password = '';
  String userName = '';
  AuthService authService = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool islogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Authentication',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !islogin
                  ? TextFormField(
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'User Name is So Small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          userName = value!;
                        });
                      },
                      key: const ValueKey('User Name'),
                      decoration:
                          const InputDecoration(hintText: 'Enter User Name'),
                    )
                  : Container(),
              TextFormField(
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    emailAddress = value!;
                  });
                },
                key: const ValueKey('Email'),
                decoration: const InputDecoration(hintText: 'Enter Email'),
              ),
              TextFormField(
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is So Small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
                obscureText: true,
                key: const ValueKey('Password'),
                decoration: const InputDecoration(hintText: 'Enter Password'),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        islogin
                            ? authService.signIn(
                                context, emailAddress, password)
                            : authService.signUp(
                                context, emailAddress, password);
                      }
                    },
                    child: !islogin
                        ? const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        : const Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.amber)),
                    onPressed: () {
                      setState(() {
                        islogin = !islogin;
                      });
                    },
                    child: !islogin
                        ? const Text(
                            "Don't Have an Account? SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        : const Text(
                            'Already SignedUp? Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
