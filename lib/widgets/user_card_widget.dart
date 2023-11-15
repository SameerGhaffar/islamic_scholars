import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.asset,
      required this.isBlock,
      this.networkImage,
      this.onBlock,
      this.onUnblock,
      this.onDelete});

  final double height;
  final double width;
  final String text;
  final String asset;
  final bool isBlock;
  final String? networkImage;
  final void Function()? onBlock;
  final void Function()? onUnblock;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: height * 0.0794,
        width: width * 0.937,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isBlock ? CColors.red : CColors.seaGreen,
            width: isBlock ? 2 : 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: CColors.dark)),
              ),
            ),
            isBlock
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: onUnblock,
                        child: Text(
                          "Unblock",
                          style: AppTextStyles.inter(
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CColors.seaGreen)),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 5)),
                      InkWell(
                        onTap: onDelete,
                        child: Text(
                          "Delete",
                          style: AppTextStyles.inter(
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CColors.red)),
                        ),
                      )
                    ],
                  )
                : InkWell(
                    onTap: onBlock,
                    child: Text(
                      "Block",
                      style: AppTextStyles.inter(
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CColors.red)),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
