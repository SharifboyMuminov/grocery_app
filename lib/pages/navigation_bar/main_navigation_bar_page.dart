import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/extensions/context_extensions.dart';
import 'package:grocery_app/pages/basket/basket_page.dart';
import 'package:grocery_app/pages/favorite/favorite_page.dart';
import 'package:grocery_app/pages/home/home_page.dart';
import 'package:grocery_app/pages/navigation_bar/widget/main_navigation_bar_item.dart';
import 'package:grocery_app/pages/profile/profile_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _activeNavBarIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    FavoritePage(),
    BasketPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: IndexedStack(index: _activeNavBarIndex, children: _pages),
      bottomNavigationBar: CustomPaint(
        size: Size(context.width, 80),
        painter: NavBarPainter(_activeNavBarIndex, 4),
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                offset: const Offset(0, -3),
                blurRadius: 18,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: .spaceAround,
            children: [
              MainNavigationBarItem(
                iconPath: "assets/icons/home.svg",
                onTab: () {
                  setState(() {
                    _activeNavBarIndex = 0;
                  });
                },
              ),
              MainNavigationBarItem(
                iconPath: "assets/icons/profile.svg",
                onTab: () {
                  setState(() {
                    _activeNavBarIndex = 1;
                  });
                },
              ),
              MainNavigationBarItem(
                iconPath: "assets/icons/favorite.svg",
                onTab: () {
                  setState(() {
                    _activeNavBarIndex = 2;
                  });
                },
              ),
              MainNavigationBarItem(
                iconPath: "assets/icons/basket.svg",
                onTab: () {
                  setState(() {
                    _activeNavBarIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarPainter extends CustomPainter {
  final int selectedIndex;
  final int navItemCount;

  final double circleSize = 80.0;
  final double bumpWidth = 80.0;

  NavBarPainter(this.selectedIndex, [this.navItemCount = 4]);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.11)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    final mainPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final bumpHeight = circleSize / 2; // 🔥 MUHIM

    final itemWidth = size.width / navItemCount;
    final selectedCenterX = (selectedIndex + 0.5) * itemWidth;

    path.moveTo(0, 0);
    path.lineTo(selectedCenterX - bumpWidth / 2, 0);

    path.quadraticBezierTo(
      selectedCenterX,
      -bumpHeight,
      selectedCenterX + bumpWidth / 2,
      0,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, shadowPaint);
    canvas.drawPath(path, mainPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
