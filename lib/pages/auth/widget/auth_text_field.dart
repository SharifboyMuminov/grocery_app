import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.onTabSuffixIcon,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
  });

  final IconData prefixIcon;
  final String hintText;
  final VoidCallback? onTabSuffixIcon;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: textInputType,
      cursorColor: Colors.lightGreen,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Icon(prefixIcon, color: Color(0xFF868889)),
        ),
        suffixIcon: onTabSuffixIcon != null
            ? IconButton(
                icon: Icon(
                  !obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.remove_red_eye_outlined,
                  color: Color(0xFF868889),
                ),
                onPressed: onTabSuffixIcon,
              )
            : null,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFF868889),
          fontWeight: .w600,
          fontSize: 15,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(8),
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(8),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
