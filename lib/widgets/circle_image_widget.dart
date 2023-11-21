import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class CircleImageWidget extends StatelessWidget {
  const CircleImageWidget(
      {super.key, required this.size, this.isUpload, this.networkImage});

  final double size;

  final bool? isUpload;
  final String? networkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: CColors.seaGreen,
          width: 2,
        ),
      ),
      child: networkImage != null
          ? ClipOval(
              child: Image(
                image: NetworkImage(networkImage!),
                fit: BoxFit.cover,
              ),
            )
          : (isUpload != null && isUpload == true)
              ? Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesUpload,
                        height: size * 0.2,
                        width: size * 0.2,
                      ),
                      Baseline(
                        baseline: size * 0.15,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          "Upload",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 18,
                              color: CColors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
    );
  }
}
