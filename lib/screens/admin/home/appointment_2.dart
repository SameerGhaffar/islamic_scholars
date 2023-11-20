import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class AdminAppointmentScreen2 extends StatelessWidget {
  AdminAppointmentScreen2({super.key});

  late double screenWidth;
  late double screenHeight;

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
          text: "Appointments",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        body: Container(
          width: screenWidth,
          padding: const EdgeInsets.all(12),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const UserInfoCard(name: "User Name",email: "email@email.com",number: "+1234567890"),
              const Padding(padding: EdgeInsets.only(bottom: 34)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Seeking Spiritual Guidance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CColors.dark,
                      ),
                    ),
                    Text(
                      "In the pursuit of deepening our understanding of religious matters and nurturing our spiritual growth,",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: CColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 34)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark,
                      ),
                    ),
                    Text(
                      "25th May 2023",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: CColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 14)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark,
                      ),
                    ),
                    Text(
                      "10:30 AM to 11:00 AM",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: CColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 14)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Duration",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark,
                      ),
                    ),
                    Text(
                      "15min",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: CColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 14)),
              BasicButtonWidget(height: screenHeight,width: screenWidth,text: "START A CALL"),
            ],
          ),
        ),
      ),
    );
  }
}
