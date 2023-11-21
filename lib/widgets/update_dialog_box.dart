import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class UpdateDialogBox extends StatelessWidget {
  UpdateDialogBox({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: screenHeight * 0.5,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleImageWidget(size: 159, networkImage: Constants.networkImage),
              TextFieldWidget(controller: controller, hint: "Name"),
              TextFieldWidget(controller: controller, hint: "Phone"),
              BasicButtonWidget(height: screenHeight,width: double.infinity ,text: "Update"),
            ],
          ),
        ),
      ),
    );
  }
}
