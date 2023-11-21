import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   iconTheme: const IconThemeData(color: CColors.blue),
      // ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: Constants.skinGradient(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.0751,
            ),
            Text(
              "User Name",
              style: AppTextStyles.inter(
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: CColors.blue),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.0139,
            ),
            Text(
              "0:37",
              style: AppTextStyles.inter(
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: CColors.blue),
              ),
            ),
            const Spacer(),
            CircleImageWidget(
              size: screenHeight * 0.257,
              networkImage:Constants.networkImage
                      ),
            const Spacer(),
            Container(
              width: screenWidth,
              height: screenHeight * 0.13,
              decoration: BoxDecoration(
                color: CColors.white75,
                border:Border.all(color: CColors.seaGreen)

              ),
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.72,
                  height: screenHeight * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      button(
                        asset: Assets.imagesVolumeUp,
                        size: screenHeight * 0.041,
                      ),
                      button(
                        asset: Assets.imagesVoice,
                        size: screenHeight * 0.041,
                      ),
                      button(
                        asset: Assets.imagesCall,
                        size: screenHeight * 0.060,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell button(
      {void Function()? onTap, required String asset, required double size}) {
    return InkWell(
      onTap: onTap,
      child: Image(
        image: AssetImage(asset),
        fit: BoxFit.cover,
        height: size,

      ),
    );
  }
}
