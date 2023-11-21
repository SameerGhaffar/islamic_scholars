import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

import 'template_box.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
    required this.name,
    required this.email,
    required this.number,
    this.isEdit,
    this.onTap,
  });

  final String name;
  final String email;
  final String number;
  final bool? isEdit;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return TemplateBox(
      bgColor: Colors.transparent,
      borderColor: Colors.transparent,
      widget: Row(
        children: [
          CircleImageWidget(
              size: screenHeight * 0.1086,
              networkImage: Constants.networkImage),
          const Padding(padding: EdgeInsets.only(right: 15)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: CColors.blue,
                ),
              ),
              Text(
                email,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CColors.dark,
                ),
              ),
              Text(
                number,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CColors.dark,
                ),
              ),
            ],
          ),
          Spacer(),
          isEdit != null
              ? InkWell(
                  onTap: () => onTap!(),
                  child: const Image(
                    image: AssetImage(Assets.imagesEditSquare),
                    width: 54,
                    height: 60,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
