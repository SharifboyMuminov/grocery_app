import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/extensions/context_extensions.dart';

class AuthCreateAccountButton extends StatelessWidget {
  const AuthCreateAccountButton({super.key, this.onTab});

  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF9CCC65), Color(0xFF8BC34A), Color(0xFF9CCC65)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8BC34A).withValues(alpha: .5),
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onTab,
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          minimumSize: Size(double.infinity, 60),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/profile.svg", width: 26, height: 26),
            Text(
              "Create an account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
              ),
            ),
            SvgPicture.asset(
              "assets/icons/profile.svg",
              width: 26,
              height: 26,
              colorFilter: ColorFilter.mode(
                Colors.transparent,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
