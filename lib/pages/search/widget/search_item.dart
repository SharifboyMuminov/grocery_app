import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTab,
  });

  final String title;
  final bool isActive;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        backgroundColor: isActive ? Color(0xFF9CCC65) : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: .circular(2)),
      ),
      onPressed: onTab,
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Color(0xFF868889),
          fontSize: 10,
          fontWeight: .w500,
        ),
      ),
    );
  }
}
