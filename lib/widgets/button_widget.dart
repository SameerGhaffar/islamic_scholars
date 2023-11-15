import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class BasicButtonWidget extends StatelessWidget {
  const BasicButtonWidget({
    super.key,
    required this.height,
    this.width,
    required this.text,
    this.color,
    this.textColor,
    this.borderColor,
    this.onPressed,
  });

  final double height;
  final double? width;
  final String text;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.1),
            // Color of the shadow
            blurRadius: 4,
            // Spread of the shadow
            offset: const Offset(0, 12),
          ),
        ],
      ),
      height: height * 0.06,
      width: width != null ? (width! * 0.80)  : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // elevation: MaterialStateProperty.all(12),

          backgroundColor: MaterialStateProperty.all(color ?? CColors.seaGreen),
          shape: MaterialStateProperty.all(
             RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: borderColor != null ?  BorderSide(color: borderColor! ) : BorderSide.none,

            ),
          ),
          //foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          text,
          style: AppTextStyles.inter(
              style:  TextStyle(fontSize: 18, color: textColor ?? Colors.white)),
        ),
      ),
    );
  }
}
