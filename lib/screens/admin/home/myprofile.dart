import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class AdminMyProfile extends StatelessWidget {
  AdminMyProfile({super.key});

   double? screenWidth;
   double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          const UserInfoCard(
              name: 'User Name',
              number: "+1234567890",
              email: "email@email.com",
              isEdit: true),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 40,
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Qualification",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Image(image: AssetImage(Assets.imagesAdd),height: 24,width: 24,),
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alim",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: CColors.dark,
                            ),
                          ),
                          Text(
                            "upholding Islamic principles and promoting peace and understanding.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: CColors.dark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: CColors.red,
                      size: 30,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Imam",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: CColors.dark,
                            ),
                          ),
                          Text(
                            "upholding Islamic principles and promoting peace and understanding.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: CColors.dark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: CColors.red,
                      size: 30,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          BasicCardWidget(
            height: screenHeight!,
            width: screenWidth!,
            asset: Assets.imagesLogout,
            text: "Logout",
          ),
        ],
      ),
    );
  }
}
