import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.controller,
    required this.hint,
    this.secureText,
    this.prefixWidget,
    this.suffixWidget,
    this.enable,
    this.verticalPadding,
    this.keyboardType,
    this.onSubmit,
    this.onChange,
    this.maxLines = 1,
    this.expands = false,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;

  final bool? secureText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool? enable;
  final double? verticalPadding;
  final TextInputType? keyboardType;
  final bool? expands;
  final int? maxLines;

  final void Function(String)? onSubmit;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        expands: expands!,
        maxLines: maxLines,
        keyboardType: keyboardType,
        enabled: enable,
        onChanged: onChange,
        obscureText: secureText ?? false,
        style: AppTextStyles.inter(),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: verticalPadding == null
              ? null
              : EdgeInsets.symmetric(
                  vertical: verticalPadding!,
                ),
          // Adjust this value
          hintText: hint,
          hintStyle: AppTextStyles.inter(
            style: const TextStyle(
              color: CColors.dark,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
          prefixIcon: prefixWidget != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: prefixWidget,
                )
              : null,
          suffixIcon: suffixWidget,
          focusColor: CColors.seaGreen,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: CColors.seaGreen,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the border radius as needed
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: CColors.seaGreen,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the border radius as needed
          ),
        ),
      ),
    );
  }
}
