import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

import 'template_box.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return TemplateBox(
      bgColor: Colors.transparent,
      borderColor: Colors.transparent,
      widget:Row(
        children: [
          CircleImageWidget(size: screenHeight * 0.1086,networkImage: Constants.networkImage),
          const Padding(padding: EdgeInsets.only(right: 15)),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: CColors.dark,
                ),
              ),
              Text(
                "email@email.com",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CColors.dark,
                ),
              ),
              Text(
                "+1234567890",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: CColors.dark,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
