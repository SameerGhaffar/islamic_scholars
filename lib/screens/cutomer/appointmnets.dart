import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';
import 'package:islamic_scholars/widgets/user_info_card.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Customer Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CColors.dark,
                ),
              ),
              const UserInfoCard(name: "User Name",email: "email@email.com",number: "+1234567890"),
              const Text(
                "Scholar Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CColors.dark,
                ),
              ),
              const UserInfoCard(name: "User Name",email: "email@email.com",number: "+1234567890"),
              const Text(
                "Appointment Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CColors.dark,
                ),
              ),
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
              BasicButtonWidget(height: screenHeight,width: screenWidth,text: "Cancel Booking"),
            ],
          ),
        ),
      ),
    );
  }
}
