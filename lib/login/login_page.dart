import 'package:bestow/dashboard/dashboard_page.dart';
import 'package:bestow/main.dart';
import 'package:bestow/sign_up/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
                height: 120, width: 120, child: Image.asset("assets/images/logo_placeholder.png")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                signUpForm(),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    );
  }

  Widget signUpForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style:
                    TextStyle(color: Color(0xff002642), fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Sign in to continue!",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintStyle: TextStyle(fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1, color: Color(0xff209fa5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1, color: Color(0xff209fa5)),
                  ),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintStyle: TextStyle(fontSize: 16),
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Color(0xff209fa5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1, color: Color(0xff209fa5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1, color: Color(0xff209fa5)),
                  ),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: Color(0xff002642)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color(0xff209fa5),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color(0xffEEEEEE),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 1 / 7),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Connect with facebook',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color(0xffEEEEEE),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 1 / 7),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign in with gmail',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I\'m a new user, ",
              style: TextStyle(
                color: Color(0xff002642),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupPage()),
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Color(0xff209fa5), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
