import 'package:best_moment_client/screens/signin_mail.dart';
import 'package:best_moment_client/widgets/logo_widget.dart';
import 'package:best_moment_client/widgets/rectangle_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(hieght);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            LogoWidget(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => SignInWithMail()));
              },
              child: RectButton(
                title: 'التسجيل عن طريق البريد',
              ),
            ),
            SizedBox(
              height: 22,
            ),
            RectButton(
              title: 'التسجيل عن طريق الجوال',
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'او التسجيل من خلال',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 8,
                ),
                Image.asset('assets/images/facebook.png'),
                Image.asset('assets/images/gmail.png'),
                Image.asset('assets/images/apple.png'),
                SizedBox(
                  width: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
