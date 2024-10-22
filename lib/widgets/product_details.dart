import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart_screen.dart';
import 'package:flutter_app/widgets/container_button.dart';

class ProductDetailPopup extends StatefulWidget {
  @override
  State<ProductDetailPopup> createState() => _ProductDetailPopupState();
}

class _ProductDetailPopupState extends State<ProductDetailPopup> {
  // const ProductDetailPopup({super.key});
  final iStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size:',
                            style: TextStyle(),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Color:',
                            style: TextStyle(),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Quantity:',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                'S',
                                style: iStyle,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'M',
                                style: iStyle,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'L',
                                style: iStyle,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'XL',
                                style: iStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: colors[i],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              SizedBox(width: 25),
                              Text('-', style: iStyle),
                              SizedBox(width: 25),
                              Text('1', style: iStyle),
                              SizedBox(width: 25),
                              Text('+', style: iStyle),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: iStyle,
                      ),
                      Text(
                        '\$400',
                        style: iStyle,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ),
                      );
                    },
                    child: ContainerButtonModel(
                      containerWidth: MediaQuery.of(context).size.width,
                      iText: 'Checkout',
                      bgColor: Color(0xffd12c2c),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        iText: 'Buy',
        bgColor: Color(0xffd12c2c),
      ),
    );
  }
}
