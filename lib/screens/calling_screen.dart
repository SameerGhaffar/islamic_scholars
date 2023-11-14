import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class CallingScreen extends StatelessWidget {
  CallingScreen({super.key});

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

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
              networkImage:
                  "https://media.istockphoto.com/id/1189728361/photo/little-boy-smiling-against-a-gray-studio-background.jpg?s=612x612&w=0&k=20&c=PA3DKZcek_ZCjs_AQJss7c9THcmS_pVE49PXCRehZSk=",
            ),
            const Spacer(),
            Container(
              width: screenWidth,
              height: screenHeight * 0.13,
              color: CColors.white75,
              child: Row(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
