import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/model/customer_model.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';
import 'package:islamic_scholars/widgets/user_card_widget.dart';

class CustomerWidget extends StatefulWidget {
  const CustomerWidget(
      {super.key, required this.screenHeight, required this.screenWidth});

  final double screenHeight;
  final double screenWidth;

  @override
  State<CustomerWidget> createState() => _CustomerWidgetState();
}

class _CustomerWidgetState extends State<CustomerWidget> {
  final TextEditingController _controller = TextEditingController();

  List<Customer> customers = [
    Customer(name: "Sameer", isBlock: false),
    Customer(name: "Muhammad Arsal Adnan", isBlock: true)
  ];

  List<String> option = ["All", "Block"];

  int optionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: widget.screenHeight * 0.0644,
                  width: widget.screenWidth * 0.693,
                  child: TextFieldWidget(
                    controller: _controller,
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
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Container(
                    height: widget.screenHeight * 0.0644,
                    width: widget.screenWidth * 0.24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: CColors.seaGreen),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: widget.screenHeight * 0.1,
                          width: widget.screenWidth * 0.1,
                          child: PopupMenuButton(
                            itemBuilder: (_) => [
                              const PopupMenuItem(
                                value: 0,
                                child: Text("All"),
                              ),
                              const PopupMenuItem(
                                value: 1,
                                child: Text("Block"),
                              ),
                            ],
                            icon: const Image(
                              image: AssetImage(
                                Assets.imagesFilter,
                              ),
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
                                color: CColors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: ListView.builder(
                itemCount: customers.length,
                itemBuilder: (context, index) => UserCardWidget(
                  text: customers[index].name,
                  asset: Assets.imagesArrowRight,
                  width: widget.screenWidth,
                  height: widget.screenHeight,
                  networkImage: Constants.networkImage,
                  isBlock: customers[index].isBlock,
                  onBlock: () {
                    //print("User at $index blocked");
                  },
                  onDelete: () {
                    // print("User at $index deleted");
                  },
                  onUnblock: () {
                    // print("User at $index Unblocked");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
