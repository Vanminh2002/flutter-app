import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // const CartScreen({super.key});
  List<String> imageslist = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  List product = [
    "Space",
    "Jack",
    "Wukong",
    "Monkey",
  ];
  List prices = [
    "\$400",
    "\$300",
    "\$200",
    "\$100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        leading: BackButton(),
        // backgroundColor: Color(0xffdf7575),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              // height: 200,
              child: ListView.builder(
                  itemCount: imageslist.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                              splashRadius: 20,
                              activeColor: Colors.redAccent,
                              value: true,
                              onChanged: (val) {}),
                          // là một widget dùng để tạo một khung hình có góc bo tròn
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(imageslist[index],height: 90,),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
