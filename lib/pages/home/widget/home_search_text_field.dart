import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchTextField extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: TextFormField(
        style: TextStyle(
          fontWeight: .w500,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          fillColor: Color(0xFFF4F5F9),
          prefixIcon: Icon(CupertinoIcons.search, color: Color(0xFF868889)),
          suffixIcon: IconButton(
            icon: Icon(
              CupertinoIcons.slider_horizontal_3,
              color: Color(0xFF868889),
            ),
            onPressed: () {},
          ),
          hintText: "Search keywords..",
          hintStyle: TextStyle(
            fontWeight: .w500,
            fontSize: 15,
            color: Color(0xFF868889),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(8),
            borderSide: .new(color: Color(0xFF868889)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: .circular(8),
            borderSide: .new(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
