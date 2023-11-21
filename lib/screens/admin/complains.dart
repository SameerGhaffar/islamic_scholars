import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/selectionWidget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';

class ComplainsScreen extends StatelessWidget {
  const ComplainsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int selectedIndex = 0;
    return Container(
      decoration: BoxDecoration(
        gradient: Constants.skinGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const MyAppBarWidget(
          text: "Complains",
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: SelectionWidget(
                    height: screenHeight,
                    width: screenWidth,
                    wPercent: 0.314,
                    onSelected: (value) {
                      selectedIndex = value;
                    },
                    options: const ["Pending", "Rejected"],
                    selectedIndex: selectedIndex,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.56,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => const TemplateBox(
                      widget: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Scholar did not show up on time",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: CColors.dark,
                                height: 0.8,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: CColors.blue,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Hassan Ali",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: CColors.blue,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "10:30 AM - May 25, 2023",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: CColors.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
