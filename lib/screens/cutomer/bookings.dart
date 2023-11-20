import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';

class BookingsScreen extends StatelessWidget {
  BookingsScreen({super.key});

  late double screenWidth;
  late double screenHeight;
  int? selectedIndex;
  List<bool> list = [false,true,true,true];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: Constants.skinGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const MyAppBarWidget(
          text: "Bookings",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: myTemplateBox(
                        isGrey: list[index],
                      ),
                    ),
                    itemCount: list.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myTemplateBox({required bool isGrey}) {
    return TemplateBox(
      height: screenHeight * 0.10,
      width: screenWidth * 0.7721,
      borderColor: isGrey ? Colors.grey : null,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "25",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    color: isGrey ? Colors.grey : CColors.seaGreen,
                    height: 0.8),
              ),
              Text(
                "May",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: isGrey ? Colors.grey : CColors.seaGreen,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "To discuss the issue of property",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isGrey ? Colors.grey : CColors.dark,
                    height: 0.8),
              ),
              Text(
                "10:30 AM to 11:00 AM",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: isGrey ? Colors.grey : CColors.dark,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: isGrey ? Colors.grey : CColors.blue,
                      ),
                      Text(
                        "Hassan Ali",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: isGrey ? Colors.grey : CColors.blue,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "  - ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: CColors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: isGrey ? Colors.grey : CColors.blue,
                      ),
                      Text(
                        "Mufti Mujeeb",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: isGrey ? Colors.grey : CColors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
