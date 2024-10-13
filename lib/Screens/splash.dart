import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:untitled5/Screens/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoardingScreen() ,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //được sử dụng để lấy chiều cao của màn hình thiết bị hiện tại
        //Khi bạn sử dụng đoạn mã này, bạn đang thiết lập chiều cao của widget mà bạn đang tạo bằng đúng chiều cao của màn hình,
        // giúp widget đó lấp đầy toàn bộ chiều cao của màn hình hiện tại
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //được sử dụng để tạo kiểu cho một widget, thường là Container. BoxDecoration cho phép bạn thêm các yếu tố như màu nền,
        // hình nền, bo góc, bóng đổ, và nhiều tính năng khác để tùy chỉnh giao diện.
        decoration: const BoxDecoration(
            //được sử dụng để thiết lập hình ảnh làm nền cho một widget, thường là trong BoxDecoration
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('image/pexels-photo-1366919.jpeg'),
              //Khi sử dụng BoxFit.cover, hình ảnh sẽ được mở rộng để lấp đầy toàn bộ không gian của widget,
              // nhưng vẫn giữ nguyên tỉ lệ khung hình gốc của nó
              fit: BoxFit.cover,
              //ược sử dụng để điều chỉnh độ mờ của một widget,
              // cho phép bạn tạo hiệu ứng làm mờ hoặc làm nổi bật một phần của giao diện người dùng
              opacity: 0.9,
            )),
        child: Column(
          children: [
            Icon(Icons.shopping_cart, size: 50, color: Color(0xFFA34711)),
            Text(
              "E-Commerces",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
