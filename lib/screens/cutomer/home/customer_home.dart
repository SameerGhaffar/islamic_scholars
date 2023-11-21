import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/screens/admin/home/appointments.dart';
import 'package:islamic_scholars/screens/admin/home/availability.dart';
import 'package:islamic_scholars/screens/admin/home/myprofile.dart';
import 'package:islamic_scholars/screens/cutomer/home/availability.dart';
import 'package:islamic_scholars/screens/cutomer/home/myprofile.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<CustomerHomeScreen> {
  bool isTrue = true;
  double? screenWidth;
  double? screenHeight;

  int selectedIndex = 0;
  List<String> list = ["Available Slot", "Appointments", "Profile"];

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
        appBar: MyAppBarWidget(
          text: "My ${list[selectedIndex]}",
          centerTitle: true,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: CColors.seaGreen,
          )),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            selectedFontSize: 12.0,
            selectedItemColor: CColors.dark,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage(Assets.imagesTimeCircle),
                  width: 32,
                  height: 32,
                  color: selectedIndex == 0 ? CColors.dark : Colors.grey,
                ),
                label: list[0],
              ),
              BottomNavigationBarItem(
                icon: Image(
                    image: const AssetImage(Assets.imagesCalendar),
                    width: 32,
                    height: 32,
                    color: selectedIndex == 1 ? CColors.dark : Colors.grey),
                label: list[1],
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage(Assets.imagesProfile),
                  width: 32,
                  height: 32,
                  color: selectedIndex == 2 ? CColors.dark : Colors.grey,
                ),
                label: "My ${list[2]}",
              ),
            ],
          ),
        ),
        body: _getBody(selectedIndex),
      ),
    );
  }

  Widget _getBody(index) {
    switch (index) {
      case 0:
        return CustomerAvailability();
      case 1:
        return Container();
      case 2:
        return CustomerMyProfile();
      default:
        return Container();
    }
  }
}
