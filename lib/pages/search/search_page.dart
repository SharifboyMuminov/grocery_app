import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/pages/filter/filter_page.dart';
import 'package:grocery_app/pages/search/widget/search_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> _mockData = [
    "Fresh Grocery",
    "Bananas",
    "cheetos",
    "vegetables",
    "Fruits",
    "discounted items",
    "Fresh vegetables",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(top: 20, right: 17, left: 4, bottom: 16),
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(fontWeight: .w500, fontSize: 15),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF4F5F9),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Color(0xFF868889),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            CupertinoIcons.slider_horizontal_3,
                            color: Color(0xFF868889),
                          ),
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Search History",
                      style: TextStyle(
                        fontWeight: .w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    CupertinoButton(
                      padding: .zero,
                      child: Text(
                        "clear",
                        style: TextStyle(
                          fontWeight: .w500,
                          fontSize: 12,
                          color: Color(0xFF407EC7),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: .start,
                  runAlignment: .center,
                  spacing: 10,
                  children: List.generate(_mockData.length, (index) {
                    return SearchItem(
                      title: _mockData[index],
                      isActive: false,
                      onTab: () {},
                    );
                  }),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Discover more",
                      style: TextStyle(
                        fontWeight: .w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    CupertinoButton(
                      padding: .zero,
                      child: Text(
                        "clear",
                        style: TextStyle(
                          fontWeight: .w500,
                          fontSize: 12,
                          color: Color(0xFF407EC7),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: .start,
                  runAlignment: .center,
                  spacing: 10,
                  children: List.generate(_mockData.length, (index) {
                    return SearchItem(
                      title: _mockData[index],
                      isActive: false,
                      onTab: () {},
                    );
                  }),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 17, right: 17),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: .circular(2)),
                    ),
                    child: Row(
                      mainAxisAlignment: .center,
                      children: [
                        Icon(
                          CupertinoIcons.camera,
                          color: Color(0xFF868889),
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Image Search",
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontWeight: .w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: .circular(2)),
                    ),
                    child: Row(
                      mainAxisAlignment: .center,
                      children: [
                        Icon(
                          CupertinoIcons.mic,
                          color: Color(0xFF868889),
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Image Search",
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontWeight: .w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
