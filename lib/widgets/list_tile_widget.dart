import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class PackageListTileWidget extends StatelessWidget {
  const PackageListTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.color,
      this.onTap});

  final Function()? onTap;
  final String title;
  final String subtitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: color ?? CColors.seaGreen,
            width: color != null ? 2.0 : 1.0,
          ),
        ),
        child: ListTile(
          title: Text(
            title,
            style: AppTextStyles.inter(
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CColors.blue),
            ),
          ),
          subtitle: Text(subtitle,
              style: AppTextStyles.inter(
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: CColors.dark))),
          onTap: onTap,
        ),
      ),
    );
  }
}
