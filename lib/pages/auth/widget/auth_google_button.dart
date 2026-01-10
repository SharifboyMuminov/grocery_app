import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthGoogleButton extends StatelessWidget {
  const AuthGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 33, vertical: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/google.svg", width: 22, height: 22),
          Text(
            "Continue with google",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: .w500,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/google.svg",
            width: 22,
            height: 22,
            colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
