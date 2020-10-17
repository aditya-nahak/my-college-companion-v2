import 'package:flutter/material.dart';
import 'package:mycollegecompanion_v2/theme/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logo.png",
      height: mq.size.height / 4,
    );

    final usernameField = TextFormField(
      controller: _usernameController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "Aditya Nahak",
        labelText: "Username",
        hintStyle: TextStyle(color: Colors.white),
      ),
    );

    final emailField = TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "something@example.com",
        labelText: "Email",
        hintStyle: TextStyle(color: Colors.white),
      ),
    );

    final passwordField = TextFormField(
      controller: _passwordController,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "password",
        labelText: "Password",
        hintStyle: TextStyle(color: Colors.white),
      ),
    );

    final repasswordField = TextFormField(
      controller: _repasswordController,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "password",
        labelText: "Re-enter Password",
        hintStyle: TextStyle(color: Colors.white),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          usernameField,
          emailField,
          passwordField,
          repasswordField
        ],
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        onPressed: () async {
          // handle authentication
        },
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        registerButton,
        Padding(
          padding: EdgeInsets.all(8),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Already have account ?",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.white),
            ),
            MaterialButton(
              child: Text(
                "Login",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authLogin);
              },
            )
          ],
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            padding: EdgeInsets.all(36),
            child: Container(
              height: mq.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  logo,
                  fields,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: bottom,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
