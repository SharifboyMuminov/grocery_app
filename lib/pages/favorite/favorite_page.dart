import 'package:flutter/material.dart';
import 'package:grocery_app/pages/favorite/widget/favorite_item.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Map<String, dynamic>> _mockData = [
    {
      "name": "Fresh Peach",
      "price": "\$8.00",
      "color": Color(0xFFFFCEC1),
      "image": "assets/images/fresh_peach.png",
      "sub_title": "dozen",
    },
    {
      "name": "Avacoda",
      "price": "\$7.00",
      "color": Color(0xFFFCFFD9),
      "image": "assets/images/avacoda.png",
      "sub_title": "2.0 lbs",
      "top_title": "new",
    },
    {
      "name": "Pineapple",
      "price": "\$9.90",
      "color": Color(0xFFFFE6C2),
      "image": "assets/images/pineapple.png",
      "sub_title": "1.50 lbs",
    },
    {
      "name": "Black Grapes",
      "price": "\$7.05",
      "color": Color(0xFFFEE1ED),
      "image": "assets/images/black_grapes.png",
      "sub_title": "5.0 lbs",
      "discount_price": "-16%",
    },
    //
    // {
    //   "name": "Fresh Peach",
    //   "price": "\$8.00",
    //   "color": Color(0xFFFFCEC1),
    //   "image": "assets/images/fresh_peach.png",
    //   "sub_title": "dozen",
    // },
    // {
    //   "name": "Pomegranate",
    //   "price": "\$2.09",
    //   "color": Color(0xFFFEE1ED),
    //   "image": "assets/images/pomegranate.png",
    //   "sub_title": "1.50 lbs",
    //   "top_title": "new",
    // },
    // {
    //   "name": "Avacoda",
    //   "price": "\$7.00",
    //   "color": Color(0xFFFCFFD9),
    //   "image": "assets/images/avacoda.png",
    //   "sub_title": "2.0 lbs",
    //   "top_title": "new",
    // },
    // {
    //   "name": "Pineapple",
    //   "price": "\$9.90",
    //   "color": Color(0xFFFFE6C2),
    //   "image": "assets/images/pineapple.png",
    //   "sub_title": "1.50 lbs",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 6,
        shadowColor: Colors.black.withValues(alpha: 0.05),
        centerTitle: true,
        title: const Text(
          "Favorites",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: _mockData.isEmpty
          ? Center(
              child: Text(
                "No Data",
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 16,
                  color: Color(0xFF868889),
                ),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.only(
                left: 17,
                right: 17,
                top: 30,
                bottom: 80,
              ),
              itemCount: _mockData.length,
              itemBuilder: (BuildContext context, int index) {
                return FavoriteItem(
                  data: _mockData[index],
                  onDelete: () {
                    _mockData.removeAt(index);
                    setState(() {});
                  },
                );
              },
            ),
    );
  }
}
