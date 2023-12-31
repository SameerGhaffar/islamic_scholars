import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';

class MyAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarWidget({
    super.key,
    required this.text,
    this.bgColor,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.iconColor,
    this.elevation,
    this.bottom,
    this.actions,
    this.centerTitle,
  });

  final Color? bgColor;
  final String text;
  final Color? textColor;
  final Color? iconColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? elevation;
  final PreferredSizeWidget? bottom;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      actions: actions,
      iconTheme: IconThemeData(
        color: iconColor ?? CColors.blue,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: fontSize ?? 18,
            fontWeight: fontWeight,
            color: textColor ?? CColors.dark),
      ),
      centerTitle: centerTitle ?? true,
      backgroundColor: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
      elevation: elevation ?? 3,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
