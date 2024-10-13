import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled5/Screens/home.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  // Đây là một loại khóa đặc biệt trong Flutter cho phép bạn truy cập trạng thái của một widget từ bất kỳ nơi nào trong cây widget.
  // Nó hữu ích khi bạn cần tương tác với một widget mà không phải là widget con trực tiếp của nó
  final introKey = GlobalKey<IntroductionScreenState>();

  //IntroductionScreenState:
  //Đây là lớp trạng thái (state) của widget IntroductionScreen. Nếu bạn đã tạo một widget tùy chỉnh với lớp trạng thái,
  // bạn có thể sử dụng GlobalKey để tham chiếu đến trạng thái đó

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Show Now ',
          body: 'Shopping is my life ',
          image: Image.asset(
            'image/undraw_undraw_undraw_undraw_undraw_undraw_undraw_shopping_bags_2ude_-1-_mnw3_-2-_q7y0_muk6_-2-_l1mh_-2-_m4xj_wqq4.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Show Now ',
          body: 'Shopping is my life ',
          image: Image.asset(
            'image/undraw_undraw_undraw_undraw_undraw_undraw_undraw_shopping_bags_2ude_-1-_mnw3_-2-_q7y0_muk6_-2-_l1mh_-2-_m4xj_wqq4.png',
            width: 200,
          ),
          decoration: pageDecoration,

        ),
        PageViewModel(
          title: 'Show Now ',
          body: 'Shopping is my life ',
          image: Image.asset(
            'image/undraw_undraw_undraw_undraw_undraw_undraw_undraw_shopping_bags_2ude_-1-_mnw3_-2-_q7y0_muk6_-2-_l1mh_-2-_m4xj_wqq4.png',
            width: 200,
          ),
          decoration: pageDecoration,
            footer: Padding(
              padding: EdgeInsets.only(left: 15,right: 15 ),
              child: ElevatedButton(onPressed: (){  },
                child: Text("Let's Shop"),
                style: ElevatedButton.styleFrom(
                  maximumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xFFEF6969)
                ),
              ),
            )
        ),
      ],

      // showDoneButton: false,
      // showSkipButton: true,
      // showBackButton: true,
      // back: Text(
      //   'Back',
      //   style: TextStyle(
      //     fontSize: 30,
      //     fontWeight: FontWeight.w600,
      //     color: Colors.redAccent,
      //   ),
      // ),
      // next: Text(
      //   'Next',
      //   style: TextStyle(
      //     fontSize: 30,
      //     fontWeight: FontWeight.w600,
      //     color: Colors.redAccent,
      //   ),
      // ),
      // onDone: () {},
      // onSkip: () {},
      // dotsDecorator: DotsDecorator(
      //     size: Size.square(10),
      //     activeSize: Size(20, 10),
      //     activeColor: Color(0xFFEf6969),
      //     color: Colors.black26,
      //     spacing: EdgeInsets.symmetric(horizontal: 3),
      //     activeShape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),

      onDone: () {
        // Hành động khi người dùng nhấn "Hoàn tất"
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (_) =>
                  HomeScreen()), // Thay thế HomePage bằng widget bạn muốn chuyển đến
        );
      },
      done: const Text("Done"),
      // Tham số done
      showDoneButton: true,
      // Hoặc set thành false nếu bạn không muốn hiển thị nút này
      next: const Icon(Icons.arrow_forward),
      // Nút "Tiếp theo"
      skip: const Text("Skip"),
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
