import 'package:flutter/material.dart';
import 'package:islamic_scholars/screens/calling_screen.dart';
import 'package:islamic_scholars/utils/button.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/list_tile_widget.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenAddState();
}

class _PackagesScreenAddState extends State<PackagesScreen> {
  List<Map<String, dynamic>> packageData = [
    {'title': 'Package 1', 'subTitle': '5 mins (299 taka)'},
    {'title': 'Package 2', 'subTitle': '10 mins (499 taka)'},
    {'title': 'Package 3', 'subTitle': '15 mins (799 taka)'},
    {'title': 'Package 1', 'subTitle': '5 mins (299 taka)'},

    // Add more packages as needed
  ];
  late double screenWidth;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const MyAppBarWidget(
        text: "Packages",
        fontWeight: FontWeight.bold,
        fontSize: 18,
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
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Select a package",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CColors.dark),
                  )),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => PackageListTileWidget(
                      title: packageData[index]["title"],
                      subtitle: packageData[index]["subTitle"],
                    color: (selectedIndex != null && selectedIndex == index) ? CColors.blue : null,

                    onTap: () {
                      selectedIndex = index;
                      setState(() {
                      });
                    },
                  ),
                  itemCount: packageData.length,
                ),
              ),
              AppButtons.basicButton(
                context: context,
                text: "CONTINUE",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CallingScreen(),));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
