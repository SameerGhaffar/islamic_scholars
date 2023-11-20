import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/screens/admin/home/appointments.dart';
import 'package:islamic_scholars/screens/admin/home/availability.dart';
import 'package:islamic_scholars/screens/admin/home/myprofile.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {

  bool isTrue = true;
  double? screenWidth;
  double? screenHeight;

  int selectedIndex = 0;

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
          text: "Set as away",
          centerTitle: false,
          fontWeight: FontWeight.w400,
          fontSize: 18,
          actions: [
            CupertinoSwitch(
              trackColor: CColors.grey,
              activeColor: CColors.grey,
              thumbColor: isTrue ? CColors.blue : CColors.dark,
              value: isTrue,
              onChanged: (value) {
                isTrue = value;
                setState(() {});
              },
            )
          ],
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
                  image: const AssetImage(Assets.imagesCalendar),
                  width: 32,
                  height: 32,
                  color: selectedIndex == 0 ? CColors.dark : Colors.grey,
                ),
                label: "Appointments",
              ),
              BottomNavigationBarItem(
                icon: Image(
                    image: const AssetImage(Assets.imagesTimeCircle),
                    width: 32,
                    height: 32,
                    color: selectedIndex == 1 ? CColors.dark : Colors.grey),
                label: "Availability",
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage(Assets.imagesProfile),
                  width: 32,
                  height: 32,
                  color: selectedIndex == 2 ? CColors.dark : Colors.grey,
                ),
                label: "My Profile",
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
        return AdminAppointments(isOnline: isTrue,);
      case 1:
        return AdminAvailability();
      case 2:
        return AdminMyProfile();
      default:
        return Container();
    }
  }
}


