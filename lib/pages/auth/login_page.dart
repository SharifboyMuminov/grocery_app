import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';
import 'package:grocery_app/pages/auth/widget/auth_text_field.dart';
import 'package:grocery_app/pages/widget/gradient_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureTextPassword = true;
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF4F5F9),
      body: Stack(
        children: [
          Image.asset("assets/images/auth_login.png"),
          Align(
            alignment: .bottomCenter,
            child: Container(
              padding: .symmetric(horizontal: 16, vertical: 22),
              height: context.height / 1.92,
              width: context.width,
              decoration: BoxDecoration(
                color: Color(0xFFF4F5F9),
                borderRadius: BorderRadius.vertical(top: .circular(10)),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Welcome back !",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: .w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sign in to your account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: Color(0xFF868889),
                    ),
                  ),
                  SizedBox(height: 16),
                  AuthTextField(
                    prefixIcon: CupertinoIcons.mail,
                    hintText: 'Email Address',
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transform.scale(
                        scale: .8,
                        child: CupertinoSwitch(
                          value: _isActive,
                          activeTrackColor: Colors.lightGreen,
                          onChanged: (value) {
                            setState(() {
                              _isActive = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontSize: 15,
                          fontWeight: .w500,
                        ),
                      ),
                      Spacer(),
                      CupertinoButton(
                        padding: .zero,
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            color: Color(0xFF407EC7),
                            fontWeight: .w500,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Spacer(),

                  GradientButton(text: "login", onPressed: () {}),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "Don’t have an account ? ",
                        style: TextStyle(
                          color: Color(0xFF868889),
                          fontWeight: .w400,
                          fontSize: 15,
                        ),
                      ),
                      CupertinoButton(
                        padding: .zero,
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .w600,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
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
