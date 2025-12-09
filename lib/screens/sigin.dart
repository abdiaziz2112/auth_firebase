import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_login/widget/textfield_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SigInPage extends StatelessWidget {
  SigInPage({super.key});

  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

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
              'Welcome Back!',
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(5),
            Text(
              'Sign in to continue',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
            ),
            Gap(30),
            CustomTextField(
              hintText: 'Email address',
              iconData: FluentIcons.mail_16_regular,
              isPassword: false,
              controller: txtEmail,
            ),
            Gap(18),
            CustomTextField(
              hintText: 'Enter password',
              iconData: FluentIcons.lock_closed_16_regular,
              isPassword: true,
              controller: txtPassword,
            ),
            Gap(35),
            Text(
              'I agree to the Terms & Conditions',
              style: TextStyle(color: Colors.grey.shade500),
            ),
            Gap(35),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5A00EC),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: const Text(
                'Sign In to Account',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
