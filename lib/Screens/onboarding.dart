import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  // const OnBoardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 19,
        ),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body: "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset(
            "images/image1.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Now So Hot',
          body: "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset(
            "images/image2.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Winter ',
          body: "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset(
            "images/image3.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Winter ',
          body: "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          image: Image.asset(
            "images/image3.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        // Hành động khi người dùng nhấn "Hoàn tất"
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (_) =>
                  HomeScreen()), // Thay thế HomePage bằng widget bạn muốn chuyển đến
        );
      },
      done: const Text("Done",style: TextStyle(color: Color(0xffdb3022))),
      // Tham số done
      showDoneButton: true,
      // Hoặc set thành false nếu bạn không muốn hiển thị nút này
      next: const Icon(Icons.arrow_forward,color: Color(0xffdb3022),),
      // Nút "Tiếp theo"
      skip:  Text("Skip",style: TextStyle(color: Color(0xffdb3022)),),
      // Nút "Bỏ qua"
      showSkipButton: true,
      // Hiển thị nút "Bỏ qua"
      // Các tham số khác nếu cần
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Color(0xFFEf6969),
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
