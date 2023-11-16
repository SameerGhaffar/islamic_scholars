import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/selectionWidget.dart';

class UserInfoScreen extends StatefulWidget {
  UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  late double screenHeight;
  late double screenWidth;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: Constants.skinGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: CColors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: screenHeight * 0.7564,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            fontSize: 22,
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
                    thickness: 1.0,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: BasicButtonWidget(
                            height: screenHeight,
                            text: "Edit Profile ",
                            textColor: CColors.dark,
                            borderColor: CColors.seaGreen,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                        ),
                        Expanded(
                          child: BasicButtonWidget(
                            height: screenHeight,
                            text: "Delete Profile",
                            color: Colors.white,
                            borderColor: CColors.seaGreen,
                            textColor: CColors.red,
                          ),
                        ),
                      ],
                    ),
                    BasicCardWidget(
                      height: screenHeight,
                      hPercent: 0.0579,
                      width: screenWidth,
                      asset: Assets.imagesArrowRight,
                      text: "View Earnings",
                    ),
                    BasicCardWidget(
                      height: screenHeight,
                      width: screenWidth,
                      text: "Account Type",
                      bgColor: Colors.transparent,
                      borderWidth: 3,
                      widget: SelectionWidget(
                        height: screenHeight,
                        width: screenWidth,
                        options: ["Scholars", "Customer"],
                        selectedIndex: selectedIndex,
                        onSelected: (value) {
                          setState(() {
                            selectedIndex = value;
                            print(value);
                          });
                        },
                      ),
                    ),
                    BasicCardWidget(
                      height: screenHeight,
                      hPercent: 0.0579,
                      width: screenWidth,
                      asset: Assets.imagesArrowRight,
                      text: "Assign Free Appointment",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
