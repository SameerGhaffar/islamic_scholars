import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class BasicButtonWidget extends StatelessWidget {
  const BasicButtonWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    this.onPressed,
  });

  final double height;
  final double width;
  final String text;
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
      width: width * 0.80,
      height: height * 0.06,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // elevation: MaterialStateProperty.all(12),

          backgroundColor: MaterialStateProperty.all(CColors.seaGreen),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          //foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          text,
          style: AppTextStyles.inter(
              style: const TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }
}
