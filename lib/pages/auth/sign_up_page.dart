import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';
import 'package:grocery_app/pages/auth/widget/auth_text_field.dart';
import 'package:grocery_app/pages/widget/gradient_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF4F5F9),
      body: Stack(
        children: [
          Image.asset("assets/images/auth_create.png"),
          Align(
            alignment: .bottomCenter,
            child: Container(
              padding: .symmetric(horizontal: 16, vertical: 22),
              height: context.height / 1.85,
              width: context.width,
              decoration: BoxDecoration(
                color: Color(0xFFF4F5F9),
                borderRadius: BorderRadius.vertical(top: .circular(10)),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: .w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Quickly create account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: Color(0xFF868889),
                    ),
                  ),
                  SizedBox(height: 20),
                  AuthTextField(
                    prefixIcon: CupertinoIcons.mail,
                    hintText: 'Email Address',
                  ),
                  SizedBox(height: 5),
                  AuthTextField(
                    textInputType: .phone,
                    prefixIcon: CupertinoIcons.phone,
                    hintText: 'Phone number',
                  ),
                  SizedBox(height: 5),
                  AuthTextField(
                    obscureText: _obscureTextPassword,
                    textInputAction: TextInputAction.done,
                    prefixIcon: CupertinoIcons.lock,
                    hintText: 'Password',
                    onTabSuffixIcon: () {
                      setState(() {
                        _obscureTextPassword = !_obscureTextPassword;
                      });
                    },
                  ),

                  Spacer(),

                  GradientButton(text: "Signup", onPressed: () {}),
                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "Already have an account ? ",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontWeight: .w400,
                          fontSize: 15,
                        ),
                      ),
                      CupertinoButton(
                        padding: .zero,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .w600,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
