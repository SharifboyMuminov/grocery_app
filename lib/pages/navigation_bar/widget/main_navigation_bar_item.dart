import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavigationBarItem extends StatelessWidget {
  const MainNavigationBarItem({super.key, this.onTab, required this.iconPath});

  final VoidCallback? onTab;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTab,
      icon: SvgPicture.asset(
        iconPath,
        width: 22,
        height: 22,
        colorFilter: ColorFilter.mode(Color(0xFF868889), BlendMode.srcIn),
      ),
    );
  }
}
