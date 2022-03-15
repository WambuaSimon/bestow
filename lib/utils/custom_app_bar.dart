import 'package:bestow/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarText;

  CustomAppBar({Key? key,  this.appBarText = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
          onTap: () {

          },
          child: Icon(Icons.menu, color: kColorPrimary)),
      title: Text(
        appBarText,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, color: kColorPrimary),
        ),
      ],
      centerTitle: true,
    );
  }
}