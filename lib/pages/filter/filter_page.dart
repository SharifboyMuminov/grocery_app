import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/pages/filter/widget/filter_other_item.dart';
import 'package:grocery_app/pages/widget/gradient_button.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _activeStarIndex = 3;

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
          "Apply Filters",
          style: TextStyle(
            fontSize: 18,
            fontWeight: .w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.restart, color: Colors.black),
          ),
          SizedBox(width: 6),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                left: 17,
                right: 17,
                top: 20,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .circular(2),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            "Price Range",
                            style: TextStyle(
                              fontWeight: .w700,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: .w500,
                                    color: Colors.black,
                                  ),
                                  textInputAction: .next,
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 14,
                                      horizontal: 16,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFF4F5F9),
                                    hintText: "Min.",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: .w500,
                                      color: Color(0xFF868889),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: .circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: .circular(6),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: .w500,
                                    color: Colors.black,
                                  ),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 14,
                                      horizontal: 16,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFF4F5F9),
                                    hintText: "Max.",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: .w500,
                                      color: Color(0xFF868889),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: .circular(6),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: .circular(6),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(color: Color(0xFFEBEBEB)),
                        SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            "Star Rating",
                            style: TextStyle(
                              fontWeight: .w700,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 14),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F5F9),
                            borderRadius: .circular(6),
                          ),
                          child: Row(
                            children: [
                              ...List.generate(5, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _activeStarIndex = index;
                                    });
                                  },
                                  child: Icon(
                                    Icons.star,
                                    color: index <= _activeStarIndex
                                        ? Color(0xFFFFC107)
                                        : Color(0xFFFFFFFF),
                                    size: 20,
                                  ),
                                );
                              }),
                              Spacer(),
                              Text(
                                "${_activeStarIndex + 1} stars",
                                style: TextStyle(
                                  fontWeight: .w500,
                                  fontSize: 12,
                                  color: Color(0xFF868889),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 28),
                        Divider(color: Color(0xFFEBEBEB)),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                            right: 14,
                            top: 20,
                            bottom: 8,
                          ),
                          child: Text(
                            "Others",
                            style: TextStyle(
                              fontWeight: .w700,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            children: [
                              FilterOtherItem(
                                iconPath: "assets/icons/discount.svg",
                                title: 'Discount',
                              ),
                              Divider(color: Color(0xFFEBEBEB)),

                              FilterOtherItem(
                                iconPath: "assets/icons/free_shipping.svg",
                                title: 'Free shipping',
                              ),
                              Divider(color: Color(0xFFEBEBEB)),

                              FilterOtherItem(
                                iconPath: "assets/icons/same_day_delivery.svg",
                                title: 'Same day delivery',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 17, right: 17, bottom: 30),
            child: GradientButton(
              text: "Apply filter",
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
