import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class AppButtons {
  static Widget basicButton(
      {void Function()? onPressed, required String text}) {
    return SizedBox(
      width: 346,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CColors.seaGreen),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
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
