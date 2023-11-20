import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';

class TemplateBox extends StatelessWidget {
  const TemplateBox({
    super.key,
     this.height,
     this.width,
    this.hPercent,
    this.wPercent,
    this.borderColor,
    this.borderWidth,
    this.bgColor,
    this.widget,
  });

  final double? height;
  final double? hPercent;
  final double? wPercent;
  final double? width;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hPercent != null ? (height! * hPercent!) : height,
      width: wPercent != null ? (width! * wPercent!) : width,

      decoration: BoxDecoration(
        color: bgColor ?? Colors.white,
        border: Border.all(
            color: borderColor ?? CColors.seaGreen,
            width: borderWidth ?? 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: widget,
    );
  }
}
