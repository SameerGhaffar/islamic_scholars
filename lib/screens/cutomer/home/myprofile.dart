import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/widgets/add_dialog_box.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/update_dialog_box.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class CustomerMyProfile extends StatelessWidget {
  CustomerMyProfile({super.key});

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
           UserInfoCard(
              name: 'User Name',
              number: "+1234567890",
              email: "email@email.com",
              isEdit: true,
               onTap:(){
                 //showDialog(context: context, builder: (context) => UpdateDialogBox());
                 showDialog(context: context, builder:(_)=> AddDialogBox());
               }
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 40,
            ),
          ),


          BasicCardWidget(
            height: screenHeight!,
            width: screenWidth!,
            asset: Assets.imagesArrowRight,
            text: "Report Issue",
          ),
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
