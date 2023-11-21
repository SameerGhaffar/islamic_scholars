import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/selectionWidget.dart';

class BasicCardWidget extends StatelessWidget {
  const BasicCardWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    this.asset,
    this.hPercent,
    this.wPercent,
    this.networkImage,
    this.borderColor,
    this.borderWidth,
    this.bgColor,
    this.onTap,
    this.widget,
  });

  final double height;
  final double? hPercent;
  final double? wPercent;
  final double width;
  final String text;
  final String? networkImage;
  final String? asset;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final void Function()? onTap;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: hPercent != null ? (height * hPercent!) : height * 0.0794,
        width: wPercent != null ? (width * wPercent!) : width * 0.937,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.white,
          border: Border.all(
              color: borderColor ?? CColors.seaGreen,
              width: borderWidth ?? 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            networkImage != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleImageWidget(
                      size: height * 0.061,
                      networkImage: networkImage,
                    ),
                  )
                : Container(),
            Expanded(
              child: Text(
                text,
                style: AppTextStyles.inter(
                    style: const TextStyle(fontSize: 18, color: CColors.dark)),
              ),
            ),
            asset != null
                ? InkWell(
                    onTap: onTap,
                    child: Image(
                      image: AssetImage(asset!),
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                  )
                : widget ?? Container(),
          ],
        ),
      ),
    );
  }
}
