import 'package:flutter/material.dart';
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
        appBar: const MyAppBarWidget(
          text: "Manage Users",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          elevation: 0.0,
          bgColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            gradient: Constants.skinGradient(),
          ),
          child: Column(
            children: [
              TabBar(

                tabs: [
                  buildContainer(text: "Scholars",selected: true),
                  buildContainer(text: "Customer",selected: true),

                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer({required String text,required bool selected}) {
    return Container(
                  color: selected ? CColors.seaGreen : Colors.white,
                  child: Tab(
                    child: Text(
                      text,
                      style: AppTextStyles.inter(
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CColors.blue),
                      ),
                    ),
                  ),
                );
  }
}
