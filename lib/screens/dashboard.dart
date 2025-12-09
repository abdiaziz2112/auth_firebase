import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_login/widget/textfield_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(20),
            SvgPicture.asset('assets/PDQ.svg', height: 50),
            const Gap(100),

            // const SizedBox(height: 50),
            Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(5),
            Text(
              'Welcome to your dashboard',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
            ),

            Text('Personal email:'),

            Gap(25),
            TextButton(
              onPressed: () {},
              child: Text(
                'Log Out',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
