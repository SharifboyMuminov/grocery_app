import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterOtherItem extends StatefulWidget {
  const FilterOtherItem({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;

  @override
  State<FilterOtherItem> createState() => _FilterOtherItemState();
}

class _FilterOtherItemState extends State<FilterOtherItem> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(vertical: 13),
      onPressed: () {
        setState(() {
          _isActive = !_isActive;
        });
      },
      child: Row(
        children: [
          SvgPicture.asset(
            widget.iconPath,
            width: 20,
            height: 20,
            fit: .contain,
          ),
          SizedBox(width: 16),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: .w500,
              color: Color(0xFF868889),
            ),
          ),
          Spacer(),
          SvgPicture.asset(
            "assets/icons/check.svg",
            colorFilter: ColorFilter.mode(
              _isActive ? Color(0xFF6CC51D) : Color(0xFF868889),
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
