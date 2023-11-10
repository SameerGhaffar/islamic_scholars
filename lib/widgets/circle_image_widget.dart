import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class CircleImageWidget extends StatelessWidget {
  CircleImageWidget(
      {super.key,
      required this.height,
      required this.width,
      this.isupload,
      this.networkImage});

  double height;
  double width;
  bool? isupload;
  String? networkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(90),
        border: Border.all(color: CColors.seaGreen),
      ),
      child: networkImage != null
          ? Image.network(
              networkImage!,
              fit: BoxFit.cover,
            )
          : (isupload != null && isupload == true)
              ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesUpload,
                      height: height * 0.2,
                      width: width * 0.2,
                    ),
                    Baseline(
                     baseline: height * 0.15,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "Upload",
                        style: AppTextStyles.inter(
                          style: const TextStyle(
                              fontSize: 18,color: CColors.blue, fontWeight: FontWeight.w600,),
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
