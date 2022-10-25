import 'package:coffee/product/constants/constsnts.dart';
import 'package:coffee/product/constants/image_constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            ImageConstants.appBarBellIcon,
            color: kAppbarIconColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/threeDots.png",
            color: kAppbarIconColor,
          ),
          onPressed: () {},
        )
      ],
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20, fontFamily: "Inter"),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}