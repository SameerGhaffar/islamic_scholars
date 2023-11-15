import 'package:flutter/material.dart';
import 'package:islamic_scholars/screens/admin/manage_users/cutomer_widget.dart';
import 'package:islamic_scholars/screens/admin/manage_users/scholars_widget.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';

class ManageUsersScreen extends StatefulWidget {
  const ManageUsersScreen({super.key});

  @override
  State<ManageUsersScreen> createState() => _ManageUsersScreenState();
}

class _ManageUsersScreenState extends State<ManageUsersScreen> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MyAppBarWidget(
          text: "Manage Users",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          elevation: 0.0,
          bgColor: CColors.white75,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: Constants.skinGradient(),
          ),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.0644,
                decoration: BoxDecoration(
                  color: CColors.white75,
                  border: Border.all(
                    color: CColors.seaGreen,
                  ),
                ),
                child: myTabBar(),
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ScholarsWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                    CustomerWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myTabBar() {
    return TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: CColors.blue,
      indicator: const BoxDecoration(
        color: CColors.seaGreen,
      ),
      tabs: [
        Tab(
          child: Text(
            "Scholars",
            style: AppTextStyles.inter(
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Tab(
          child: Text(
            "Customer",
            style: AppTextStyles.inter(
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
