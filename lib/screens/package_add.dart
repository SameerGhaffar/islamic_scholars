import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/list_tile_widget.dart';

class PackagesScreenAdd extends StatefulWidget {
  const PackagesScreenAdd({super.key});

  @override
  State<PackagesScreenAdd> createState() => _PackagesScreenAddState();
}

class _PackagesScreenAddState extends State<PackagesScreenAdd> {
  List<Map<String, dynamic>> packageData = [
    {'title': 'Package 1', 'subTitle': '5 mins (299 taka)'},
    {'title': 'Package 2', 'subTitle': '10 mins (499 taka)'},
    {'title': 'Package 3', 'subTitle': '15 mins (799 taka)'},
    // Add more packages as needed
  ];
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      appBar: const MyAppBarWidget(
        text: "Packages",
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: CColors.seaGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          gradient: Constants.skinGradient(),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) => Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: screenWidth * 0.82,
              child: PackageListTileWidget(
                  title: packageData[index]["title"],
                  subtitle: packageData[index]["subTitle"]),
            ),
          ),
          itemCount: packageData.length,
        ),
      ),
    );
  }
}
