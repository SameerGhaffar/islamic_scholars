import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class AppButtons {
  static Widget basicButton(
      {void Function()? onPressed, required String text}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.1), // Color of the shadow
            blurRadius: 4, // Spread of the shadow
            offset: const Offset(0, 12),
          ),
        ],
      ),
      width: 346,
      height: 60,
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
