import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/selectionWidget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';




class ReportIssueScreen extends StatelessWidget {
  ReportIssueScreen({super.key});

  late double screenWidth;
  late double screenHeight;
  List<String> list = ["Pending","Resolved","Invalid"];

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
          text: "Report Issues",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: CColors.seaGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.add),
          onPressed: () {},
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
                  child: GridView.builder(
                    itemCount: list.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.56,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) =>  TemplateBox(
                      widget: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Scholar did not show up on time",
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: CColors.dark,
                                  ),
                            ),
                            Text(
                              list[index].toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: index == 2 ? CColors.red : CColors.seaGreen,
                              ),
                            ),
                            Text(
                              "10:30 AM - May 25, 2023",
                              style:TextStyle(
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
