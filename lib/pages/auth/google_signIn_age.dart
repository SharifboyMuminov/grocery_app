import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';
import 'package:grocery_app/pages/auth/login_page.dart';
import 'package:grocery_app/pages/auth/widget/auth_create_account_button.dart';
import 'package:grocery_app/pages/auth/widget/auth_google_button.dart';

class GoogleSignInPage extends StatefulWidget {
  const GoogleSignInPage({super.key});

  @override
  State<GoogleSignInPage> createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF4F5F9),
      body: Stack(
        children: [
          Image.asset("assets/images/auth_welcome.png"),
          Align(
            alignment: .bottomCenter,
            child: Container(
              padding: .symmetric(horizontal: 16, vertical: 22),
              height: context.height / 2.5,
              width: context.width,
              decoration: BoxDecoration(
                color: Color(0xFFF4F5F9),
                borderRadius: BorderRadius.vertical(top: .circular(10)),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: .w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: Color(0xFF868889),
                    ),
                  ),
                  SizedBox(height: 28),
                  AuthGoogleButton(),
                  SizedBox(height: 12),

                  AuthCreateAccountButton(),
                  SizedBox(height: 20),

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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
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
