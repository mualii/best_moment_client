import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'bottom_bar_screen.dart';

class IntroScreen extends StatelessWidget {
  final _introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => BottomBarScreen()),
    );
  }

  Widget _buildImage(String assetName, BuildContext context) {
    //print(MediaQuery.of(context).size.height * .51);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Image.asset(
      '$assetName',
      width: width * .505,
      height: height * .4,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16);

    const pageDecoration = const PageDecoration(
      titlePadding: EdgeInsets.fromLTRB(0, 24, 0, 0),
      titleTextStyle: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: _introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          title: "ابحث وشاهد",
          body:
              "ابحث فى الآف الأماكن فى أكثر من 70 مدينة فى المملكة العربية السعودية",
          image: _buildImage('assets/images/phone.png', context),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "احجز",
          body: "إحجز حجز آمن و مؤكد",
          image: _buildImage('assets/images/map.png', context),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "وسائل دفع",
          body: "طرق دفع متنوعه آمنة",
          image: _buildImage('assets/images/card.png', context),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showDoneButton: true,
      skipFlex: 0,
      nextFlex: 0,
      rtl: true, // Display as right-to-left
      skip: const Text("تخطى"),
      skipColor: Color(0xff555555),
      next: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff30C6E0), borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      done: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff30C6E0), borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      //controlsPadding: kIsWeb
      //  ? const EdgeInsets.all(12.0)
      //: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xff30C6E0),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
