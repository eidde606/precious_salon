import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'account.dart';

void main(List<String> args) {
  runApp(CreateAccount());
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Register',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(children: <Widget>[
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 10,
          ),
          _TextField(
            label: 'Name',
            controller: _nameController,
            validator: _requiredValidator,
          ),
          SizedBox(height: 15),
          _TextField(
            label: 'Email',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: _requiredValidator,
          ),
          SizedBox(height: 15),
          _TextField(
            label: 'Password',
            controller: _passwordController,
            validator: _requiredValidator,
            password: true,
          ),
          SizedBox(height: 15),
          _TextField(
            label: 'Confirm Password',
            controller: _confirmPasswordController,
            validator: _confirmPasswordValidator,
            password: true,
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: MaterialButton(
                  onPressed: () async {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text)
                          .then((value) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    }
                  },
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  String? _requiredValidator(String? text) {
    if (text == null || text.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  String? _confirmPasswordValidator(String? confirmPasswordText) {
    if (confirmPasswordText == null || confirmPasswordText.trim().isEmpty) {
      return 'This field is required';
    }
    if (_passwordController.text != confirmPasswordText) {
      return "Password don't match";
    }
    return null;
  }
}

class _TextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool password;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  const _TextField({
    required this.label,
    required this.controller,
    this.validator,
    this.password = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                border: InputBorder.none,
              ),
              keyboardType: keyboardType,
              obscureText: password,
              validator: validator,
            ),
          ),
        ),
      ),
    );
  }
}
