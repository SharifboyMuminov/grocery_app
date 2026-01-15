import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/extensions/context_extensions.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({super.key, required this.data, this.onDelete});

  final Map<String, dynamic> data;
  final VoidCallback? onDelete;

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.data["name"].toString()),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        padding: EdgeInsets.only(right: 35),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          color: Color(0xFFEF574B),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Icon(CupertinoIcons.delete, color: Colors.white, size: 30),
      ),
      onDismissed: (direction) {
        widget.onDelete?.call();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7),
        padding: EdgeInsets.only(top: 15, bottom: 15, right: 8, left: 15),
        width: context.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: widget.data["color"],
                    shape: BoxShape.circle,
                  ),
                ),
                Image.asset(widget.data["image"], width: 74),
              ],
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.data["price"]} x $_count",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF6CC51D),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    widget.data["name"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    widget.data["sub_title"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF868889),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    if (_count == 1) return;
                    setState(() {
                      _count--;
                    });
                  },
                  icon: Icon(Icons.remove, color: Color(0xFF6CC51D)),
                ),
                Text(
                  _count.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF868889),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_count == 99) return;
                    setState(() {
                      _count++;
                    });
                  },
                  icon: Icon(Icons.add, color: Color(0xFF6CC51D)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
