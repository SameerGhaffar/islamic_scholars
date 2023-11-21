import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/template_box.dart';

class AdminAppointments extends StatelessWidget {
  AdminAppointments({super.key, required this.isOnline});

  final bool isOnline;

 final  List<bool> list = [false, true, true, true];



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            isOnline
                ? const Padding(
                    padding: EdgeInsets.all(4.0,),
                    child: Text(
                      "You are currently offline ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: CColors.red,
                      ),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.all(4.0,),
                  ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,),
                  child: myTemplateBox(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    isGrey: list[index],
                  ),
                ),
                itemCount: list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myTemplateBox({required bool isGrey, required double screenWidth,required double screenHeight}) {
    return TemplateBox(
      height: screenHeight * 0.10,
      width: screenWidth * 0.7721,
      borderColor: isGrey ? Colors.grey : null,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("25",
                  style: AppTextStyles.inter(
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w900,
                      color: isGrey ? Colors.grey : CColors.seaGreen,
                      height: 0.8,
                    ),
                  ),),
              Text(
                "May",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: isGrey ? Colors.grey : CColors.seaGreen,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "To discuss the issue of property",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isGrey ? Colors.grey : CColors.dark,
                    ),
              ),
              Text(
                "10:30 AM to 11:00 AM",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: isGrey ? Colors.grey : CColors.dark,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: isGrey ? Colors.grey : CColors.blue,
                  ),
                  Text(
                    "Hassan Ali",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: isGrey ? Colors.grey : CColors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
