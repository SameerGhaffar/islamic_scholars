import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class ComplainsScreen2 extends StatelessWidget {
  const ComplainsScreen2({super.key});



  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: Constants.skinGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBarWidget(
          text: "Complains",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Delete",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CColors.red,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserInfoCard(
                    name: "User Name",
                    email: "email@email.com",
                    number: "+1234567890"),
                const SizedBox(
                  height: 34,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark,
                      ),
                    ),
                    Text(
                      "Scholar did not show up in time I have scheduled an appointment on 25th May but when I called the scholar he did not pick up nor he reached out later on.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: CColors.dark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                const Text(
                  "Media",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: CColors.dark,
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                const TemplateBox(
                  widget: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(Assets.imagesImageFile),
                          width: 30,
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                        ),
                        Text(
                          "Screenshot-12003.jpg",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: CColors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                const Text(
                  "Status",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: CColors.dark,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: BasicButtonWidget(
                        height: screenHeight,
                        text: "Pending",
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
                        text: "Resolved",
                        color: CColors.seaGreen,
                        borderColor: CColors.seaGreen,
                        textColor: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                    ),
                    Expanded(
                      child: BasicButtonWidget(
                        height: screenHeight,
                        text: "Invalid",
                        color: Colors.white,
                        borderColor: CColors.seaGreen,
                        textColor: CColors.dark,

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
