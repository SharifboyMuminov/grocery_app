import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/pages/detail_product/detail_product_page.dart';
import 'package:grocery_app/pages/filter/filter_page.dart';
import 'package:grocery_app/pages/home/widget/featured_products_item.dart';

class ProductsByCategoryPage extends StatefulWidget {
  const ProductsByCategoryPage({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  State<ProductsByCategoryPage> createState() => _ProductsByCategoryPageState();
}

class _ProductsByCategoryPageState extends State<ProductsByCategoryPage> {
  final List<Map<String, dynamic>> _featuredProductsMockData = [
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
      "color": Color(0xFFFCFFD9),
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

    {
      "name": "Fresh Peach",
      "price": "\$8.00",
      "color": Color(0xFFFFCEC1),
      "image": "assets/images/fresh_peach.png",
      "sub_title": "dozen",
    },
    {
      "name": "Pomegranate",
      "price": "\$2.09",
      "color": Color(0xFFFEE1ED),
      "image": "assets/images/pomegranate.png",
      "sub_title": "1.50 lbs",
      "top_title": "new",
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
      "color": Color(0xFFFCFFD9),
      "image": "assets/images/pineapple.png",
      "sub_title": "1.50 lbs",
    },

    // {
    //   "name": "Fresh Broccoli",
    //   "price": "\$3.00",
    //   "color": Color(0xFFD2FFD0),
    //   "image": "assets/images/fresh_broccoli.png",
    //   "sub_title": "1 kg",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        toolbarHeight: 90,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          widget.appBarTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: .w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FilterPage();
                  },
                ),
              );
            },
            icon: Icon(CupertinoIcons.slider_horizontal_3, color: Colors.black),
          ),
          SizedBox(width: 6),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        itemCount: _featuredProductsMockData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 18,
          mainAxisExtent: 240,
        ),
        itemBuilder: (context, index) {
          return FeaturedProductsItem(
            data: _featuredProductsMockData[index],
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailProductPage();
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
