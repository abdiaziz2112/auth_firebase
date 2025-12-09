import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.iconData,
    required this.isPassword,
    required this.controller,
  });

  final String hintText;
  final IconData iconData;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xff222222),
        borderRadius: BorderRadius.circular(4),

        //borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(iconData, color: Colors.grey.shade500, size: 30),
          const Gap(5),
          Expanded(
            child: TextField(
              obscureText: isPassword,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.shade500),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              style: TextStyle(color: Colors.grey.shade300),
            ),
          ),
        ],
      ),
    );
  }
}
