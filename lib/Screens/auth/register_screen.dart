import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/auth/login.dart';
import 'package:flutter_app/screens/auth/register_screen.dart';
import 'package:flutter_app/screens/navigation_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 60,
              // ),
              Image.asset('images/register.png',width: 250,),
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
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),

                          prefixIcon: Icon(Icons.person_2)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(Icons.phone),
                        // suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 15,),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NavigationScreen()));},
                      child: Text(
                        'Create',
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
                          "Adredy have an account ?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Login',
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
