import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            margin: const EdgeInsets.all(15),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
            padding: const EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: const Text('Error: Form is not valid!')),
      );
    }
  }

  submitform() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(15),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Text(
          'First Name: $firstname\nLast Name: $lastname\nEmail: $email\nPassword: $password',
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'Form',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter First Name'),
                key: const ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First Name Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  firstname = newValue.toString();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Last Name'),
                key: const ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last Name Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  lastname = newValue.toString();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Email'),
                key: const ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  email = newValue.toString();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Enter Password'),
                key: const ValueKey('password'),
                validator: (value) {
                  if (value.toString().length <= 5) {
                    return 'Password Contains Minimum 6 Characters!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  password = newValue.toString();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.only(
                        right: 30, left: 30, top: 15, bottom: 15)),
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {
                    trysubmit();
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
