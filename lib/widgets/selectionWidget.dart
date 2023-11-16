import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.height,
    required this.width,
    this.hPercent,
    this.wPercent,
    required this.onSelected,
    this.borderColor,
    this.borderWidth,
    this.bgColor,
    required this.options,
    required this.selectedIndex,
  });

  final double height;
  final double width;
  final double? hPercent;
  final double? wPercent;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final List<String> options;
  final int selectedIndex;
  final void Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.0644,
      width: width * 0.4279,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: CColors.seaGreen),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              options[selectedIndex],
              style: AppTextStyles.inter(
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: CColors.blue)),
            ),
          ),
          SizedBox(
            height: height * 0.1,
            width: width * 0.1,
            child: PopupMenuButton(
              itemBuilder: (_) => List.generate(
                options.length,
                (index) => PopupMenuItem(
                  value: index,
                  child: Text(options[index]),
                ),
              ),
              icon: const Image(
                image: AssetImage(Assets.imagesArrowDown),
              ),
              onSelected: (value) => onSelected(value),
            ),
          ),
        ],
      ),
    );
  }
}
