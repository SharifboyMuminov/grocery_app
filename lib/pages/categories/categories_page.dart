import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/pages/categories/products_by_category_page.dart';
import 'package:grocery_app/pages/filter/filter_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<Map<String, dynamic>> _categoryMockData = [
    {
      "title": "Vegetables",
      "icon": "assets/icons/vegetables.svg",
      "color": Color(0xFFE6F2EA),
    },
    {
      "title": "Fruits",
      "icon": "assets/icons/fruits.svg",
      "color": Color(0xFFFFE9E5),
    },
    {
      "title": "Beverages",
      "icon": "assets/icons/beverages.svg",
      "color": Color(0xFFFFF6E3),
    },
    {
      "title": "Grocery",
      "icon": "assets/icons/grocery.svg",
      "color": Color(0xFFF3EFFA),
    },
    {
      "title": "Edible oil",
      "icon": "assets/icons/edible_oil.svg",
      "color": Color(0xFFDCF4F5),
    },
    {
      "title": "Household",
      "icon": "assets/icons/household.svg",
      "color": Color(0xFFFFE8F2),
    },
    {
      "title": "Babycare",
      "icon": "assets/icons/babycare.svg",
      "color": Color(0xFFD2EFFF),
    },
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
          "Categories",
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
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 14,
          childAspectRatio: 1,
        ),
        itemCount: _categoryMockData.length,
        itemBuilder: (context, index) {
          return TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFFFFBFB),

              shape: RoundedRectangleBorder(borderRadius: .circular(6)),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductsByCategoryPage(
                      appBarTitle: _categoryMockData[index]["title"],
                    );
                  },
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(15),
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                    shape: .circle,
                    color: _categoryMockData[index]["color"],
                  ),
                  child: SvgPicture.asset(_categoryMockData[index]["icon"]!),
                ),
                Text(
                  _categoryMockData[index]["title"],
                  style: TextStyle(
                    color: Color(0xFF868889),
                    fontSize: 10,
                    fontWeight: .w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
