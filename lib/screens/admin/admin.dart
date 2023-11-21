import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: Constants.skinGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Scholars",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CColors.dark),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 6,
                      ),
                    ),
                    Text(
                      "Commissions",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CColors.dark,
                        ),
                      ),
                    ),
                    Text(
                      "Earnings",
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CColors.dark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    // defaultColumnWidth: const IntrinsicColumnWidth(),
                    columnWidths: const {
                      0: FlexColumnWidth(4),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(3),
                    },
                    border: TableBorder.symmetric(
                      inside: const BorderSide(width: 1.0, color: Colors.black),
                      outside:
                          const BorderSide(width: 1.0, color: Colors.black),
                    ),
                    children: List.generate(
                      4,
                      (index) => TableRow(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Row(
                              children: [
                                CircleImageWidget(
                                  size: screenHeight * 0.031,
                                  networkImage: Constants.networkImage,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                Expanded(
                                  child: Text(
                                    "User Name",
                                    maxLines: 2,
                                    style: AppTextStyles.inter(
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: CColors.dark,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text(
                              "10%",
                              softWrap: true,
                              maxLines: 2,
                              style: AppTextStyles.inter(
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: CColors.dark,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 15,
                            ),
                            child: Text(
                              "৳5000",
                              style: AppTextStyles.inter(
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: CColors.dark,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.26,
                color: CColors.white75,
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      children: [
                        myContainer(
                          text: "Users",
                          image: Assets.imagesUsers,
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                        ),
                        myContainer(
                          text: "Complains",
                          image: Assets.imagesComplain,
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          badgeText: "3",
                        ),
                        myContainer(
                          text: "Bookings",
                          image: Assets.imagesTicket,
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          badgeText: "10",
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: CColors.seaGreen,
                                  width: 1.0,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Packages",
                                style: AppTextStyles.inter(
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: CColors.dark,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: CColors.seaGreen,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Logout",
                                    style: AppTextStyles.inter(
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: CColors.dark,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12)),
                                  const Image(
                                    image: AssetImage(Assets.imagesLogout),
                                    fit: BoxFit.cover,
                                    height: 25,
                                    width: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(
      {required String image,
      required String text,
      String? badgeText,
      required screenHeight,
      required screenWidth}) {
    return Expanded(
      child: Container(
        height: screenHeight * 0.1534,
        //width: screenWidth * 0.33,

        decoration: BoxDecoration(
          border: Border.all(color: CColors.seaGreen, width: 1.0),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3.0),
              alignment: Alignment.topRight,
              child: SizedBox(
                height: screenHeight * 0.030,
                width: screenHeight * 0.030,
                child: badgeText != null
                    ? Badge(
                        backgroundColor: CColors.red,
                        alignment: Alignment.center,
                        textColor: Colors.white,
                        label: Text(
                          badgeText,
                          style: TextStyle(
                            fontSize: screenHeight * 0.012,
                          ),
                        ),
                      )
                    : Container(),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.0570,
              width: screenHeight * 0.0570,
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                height: screenHeight * 0.055,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.027,
              child: Text(
                text,
                style: AppTextStyles.inter(
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CColors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
