import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/widgets/add_dialog_box.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class AdminMyProfile extends StatelessWidget {
  const AdminMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          UserInfoCard(
              name: 'User Name',
              number: "+1234567890",
              email: "email@email.com",
              isEdit: true,
              onTap: () {
                //showDialog(context: context, builder: (context) => UpdateDialogBox());
                showDialog(context: context, builder: (_) => AddDialogBox());
              }),
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
                      child: Image(
                        image: AssetImage(Assets.imagesAdd),
                        height: 24,
                        width: 24,
                      ),
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
                            softWrap: true,
                            overflow: TextOverflow.fade,
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
                      size: 27,
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
                      size: 27,
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
            height: screenHeight,
            width: screenWidth,
            asset: Assets.imagesLogout,
            text: "Logout",
          ),
        ],
      ),
    );
  }
}
