import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class BasicCardWidget extends StatelessWidget {
  const BasicCardWidget({
    super.key,
     required this.height,
    required this.width,
    required this.text,
    required this.asset,
     this.hPercent,
     this.wPercent,
    this.networkImage,
    this.onTap,

  });

  final double height;
  final double? hPercent;
  final double? wPercent;
  final double width;
  final String text;
  final String? networkImage;
  final String asset;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: hPercent != null ? (height * hPercent!) :  height * 0.0794,
        width: wPercent !=null ? (width * wPercent!) : width * 0.937,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: CColors.seaGreen),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18),
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
            InkWell(
              onTap: onTap,
              child:  Image(
                image: AssetImage(asset),
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
