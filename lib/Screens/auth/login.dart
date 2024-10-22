import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/auth/forgot_screen.dart';
import 'package:flutter_app/screens/auth/register_screen.dart';
import 'package:flutter_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset('images/login1.png', width: 300),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffc33535),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xffeff6969),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('OR'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffef6969),
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
