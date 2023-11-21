import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/appbar_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/selectionWidget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class ReportIssueScreen2 extends StatelessWidget {
  ReportIssueScreen2({super.key});

  late double screenWidth;
  late double screenHeight;
  TextEditingController controller = TextEditingController();

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
          text: "Report an Issue",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextFieldWidget(
                          controller: controller, hint: "Subject of Issue"),
                      const Padding(padding: EdgeInsets.only(bottom: 12)),
                      TextFieldWidget(
                        maxLines: 10,
                        controller: controller,
                        hint: "Details",


                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 12)),
                       TemplateBox(
                        height: screenHeight! * 0.091,
                        widget: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(Assets.imagesClip),
                                width: 30,
                                height: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                ),
                              ),
                              Text(
                                "Attach screenshot",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: CColors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BasicButtonWidget(height: screenHeight, text: "REPORT",width: screenWidth,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
