import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/template_box.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';
import 'package:islamic_scholars/widgets/user_card_widget.dart';

class CustomerAvailability extends StatefulWidget {
  CustomerAvailability({super.key});

  @override
  State<CustomerAvailability> createState() => _CustomerAvailabilityState();
}

class _CustomerAvailabilityState extends State<CustomerAvailability> {
  double? screenWidth;

  double? screenHeight;
  TextEditingController controller = TextEditingController();

  List weekDay = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  List name = [
    "User Name",
    "User Name",
    "User Name",
  ];
  List<String> option = ["Filter", "Sort"];

  int optionIndex = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight! * 0.0644,
                width: screenWidth! * 0.68,
                child: TextFieldWidget(
                  controller: controller,
                  hint: "Search",
                  prefixWidget: Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: const Image(
                      image: AssetImage(Assets.imagesSearch),
                      height: 25,
                      width: 25,

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: screenHeight! * 0.0644,
                  width: screenWidth! * 0.24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: CColors.seaGreen),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: screenHeight! * 0.1,
                        width: screenWidth! * 0.1,
                        child: PopupMenuButton(
                          itemBuilder: (_) => [
                            const PopupMenuItem(
                              value: 0,
                              child: Text("Filter"),
                            ),
                            const PopupMenuItem(
                              value: 1,
                              child: Text("Sort"),
                            ),
                          ],
                          icon: const Image(
                            image: AssetImage(Assets.imagesFilter),
                            color: CColors.blue,
                          ),
                          onSelected: (value) {
                            setState(() {
                              optionIndex = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Text(
                          option[optionIndex],
                          style: AppTextStyles.inter(
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: CColors.blue)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxHeight: 650,

                  ),
                  child: TemplateBox(
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BasicCardWidget(
                          height: screenHeight!,
                          width: screenWidth!,
                          borderColor: Colors.transparent,
                          networkImage: Constants.networkImage,
                          text: name[index],
                          textColor: CColors.blue,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        Expanded(
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: weekDay.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      weekDay[index],
                                      style: AppTextStyles.inter(
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: CColors.dark)),
                                    ),
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: TemplateBox(
                                          widget: Center(
                                            child: Text(
                                              "Start Time",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: CColors.dark,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: CColors.dark,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: TemplateBox(
                                          widget: Center(
                                            child: Text(
                                              "End Time",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: CColors.dark,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: TemplateBox(
                                          bgColor: CColors.seaGreen,
                                          widget: Center(
                                            child: Text(
                                              "Book",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
// Expanded(
// child: ListView.builder(
// itemCount: weekDay.length ,
// itemBuilder: (context, index) => SizedBox(
// width: screenWidth,
// child: Padding(
// padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Expanded(
// child: Text(
// weekDay[index],
// style: const TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.w500,
// color: CColors.dark,
// ),
// ),
// ),
// const Expanded(
// flex: 2,
// child: TemplateBox(
//
// widget: Center(
// child: Text(
// "Start Time",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w400,
// color: CColors.dark,
// ),
// ),
// ),
// ),
// ),
// const SizedBox(width: 10,),
// const Text(
// "-",
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.w500,
// color: CColors.dark,
// ),
// ),
// const SizedBox(width: 10,),
// const Expanded(
// flex: 2,
// child: TemplateBox(
//
// widget: Center(
// child: Text(
// "End Time",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w400,
// color: CColors.dark,
// ),
// ),
// ),
// ),
// ),
//
// ],
// ),
// ),
// ),
// ),
// ),
