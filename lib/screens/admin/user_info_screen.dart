import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class UserInfoScreen extends StatelessWidget {
  UserInfoScreen({super.key});

  late double screenHeight;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: CColors.blue),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          gradient: Constants.skinGradient(),
        ),
        child: Container(
          height: screenHeight * 0.7564,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              SizedBox(
                height: screenHeight * 0.1942,
                child: Column(
                  children: [
                    CircleImageWidget(
                        size: screenWidth * 0.2349,
                        networkImage: Constants.networkImage),
                    const Spacer(),
                    Text(
                      "User Name",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CColors.blue,
                        ),
                      ),
                    ),
                    Text(
                      "User Name",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                          fontSize: 14,
                          color: CColors.dark,
                        ),
                      ),
                    ),
                    Text(
                      "+1234567890",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                          fontSize: 14,
                          color: CColors.dark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1942,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Qualification",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                        const Image(image: AssetImage(Assets.imagesAdd))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Qualification",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                        Text(
                          "upholding Islamic principles and promoting peace and understanding.",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 14,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Qualification",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                        Text(
                          "upholding Islamic principles and promoting peace and understanding.",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              fontSize: 14,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.2721,
                child: const Divider(
                  color: CColors.dark,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                    Expanded(child: BasicButtonWidget(height: screenHeight,  text: "")),
                    Expanded(child: BasicButtonWidget(height: screenHeight,  text: "")),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
