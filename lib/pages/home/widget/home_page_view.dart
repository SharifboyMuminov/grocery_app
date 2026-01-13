import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';

class HomePageViewItem extends StatefulWidget {
  const HomePageViewItem({super.key});

  @override
  State<HomePageViewItem> createState() => _HomePageViewItemState();
}

class _HomePageViewItemState extends State<HomePageViewItem> {

  int _activePageViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 300,
        width: context.width,
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (v) {
                setState(() {
                  _activePageViewIndex = v;
                });
              },
              scrollDirection: .horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: .bottomLeft,
                  padding: EdgeInsets.only(bottom: 78, left: 44),
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/home_page_view_item.png",
                      ),
                    ),
                  ),
                  child: Text(
                    "20% off on your\nfirst purchase",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: .bold,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 30,
              left: 30,
              child: Row(
                children: List.generate(4, (index) {
                  return AnimatedContainer(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    height: 6,
                    width: _activePageViewIndex == index ? 24 : 6,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      borderRadius: .circular(30),
                      color: _activePageViewIndex == index
                          ? Color(0xFF6CC51D)
                          : Colors.white,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
