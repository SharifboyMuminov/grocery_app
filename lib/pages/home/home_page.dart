import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';
import 'package:grocery_app/pages/home/widget/featured_products_view.dart';
import 'package:grocery_app/pages/home/widget/home_category_view.dart';
import 'package:grocery_app/pages/home/widget/home_page_view.dart';
import 'package:grocery_app/pages/home/widget/home_search_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: context.width,
        constraints: BoxConstraints(minHeight: context.height),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0xFFF7F8FB),
              Color(0xFFF4F5F9),
              Color(0xFFF4F5F9),
              Color(0xFFF4F5F9),
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                floating: true,
                delegate: HomeSearchTextField(),
              ),
              HomePageViewItem(),
              HomeCategoryView(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 2,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "Featured products",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: .bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              FeaturedProductsView(),
            ],
          ),
        ),
      ),
    );
  }
}
