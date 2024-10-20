import 'package:flutter/material.dart';
import 'package:flutter_app/screens/products/products_screen.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  List<String> tabs = ["All", "Category", "Top", "Recommended"];

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
  List ratings = [
    "54",
    "54",
    "54",
    "54",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1,
                            )
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Search',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffef6969),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      child: Icon(Icons.notifications_none),
                      // child: Center(
                      //   child: Icon(Icons.notifications_none),
                      // ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffef6969),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // child: Image.asset('images/image1.jpg'),
                  child: Image.asset(
                    'images/image1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true, // Chỉ chiếm không gian cần thiết
                    scrollDirection: Axis.horizontal, // cuộn ngang
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          //Tạo khoảng cách 8 pixel từ tất cả các cạnh
                          padding: EdgeInsets.only(left: 15, right: 15),
                          //Tạo khoảng cách 15 pixel bên trái và bên phải
                          // decoration: BoxDecoration(
                          //    color: Colors.orange.withOpacity(0.05)
                          // ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffc36868),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  // color: Colors.red,
                  height: 280,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageslist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 180,
                                width: 150,
                                //Stack là một widget cho phép bạn xếp chồng các widget lên nhau
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductsScreen(),
                                            ));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          imageslist[index],
                                          fit: BoxFit.cover,
                                          height: 180,
                                          width: 150,
                                        ),
                                      ),
                                    ),
                                    //Positioned là một widget trong Flutter cho phép bạn định vị một widget con trong một Stack
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          // Icon(
                                          // Icons.favorite,
                                          //  color: Colors.redAccent,
                                          // ),
                                          child: Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.redAccent,
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                product[index],
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  Text('(' + ratings[index] + ')'),
                                  SizedBox(width: 10),
                                  Text(
                                    prices[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),

                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 30),
                //GridView là một widget trong Flutter cho phép bạn hiển thị các phần tử trong dạng lưới (grid),
                // SliverGridDelegateWithFixedCrossAxisCount là một lớp trong Flutter được sử dụng để xác định cách bố trí các widget con trong một GridView với số lượng cột cố định.
                Center(
                  child: GridView.builder(
                    itemCount: product.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // là một lớp trong Flutter được sử dụng để ngăn chặn việc cuộn của một widget cuộn
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //2 cột
                      childAspectRatio: 0.7, //  Tỉ lệ chiều cao và chiều rộng
                      // crossAxisSpacing: 2, // Khoảng cách giữa các cột
                      // mainAxisSpacing: 2, // Khoảng cách giữa các hàng
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        // margin: EdgeInsets.only(right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 220,
                              // height: 180,
                              // width: 150,
                              //Stack là một widget cho phép bạn xếp chồng các widget lên nhau
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductsScreen()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        imageslist[index],
                                        fit: BoxFit.cover,
                                        height: 220,
                                        width: 180,
                                      ),
                                    ),
                                  ),
                                  //Positioned là một widget trong Flutter cho phép bạn định vị một widget con trong một Stack
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        // Icon(
                                        // Icons.favorite,
                                        //  color: Colors.redAccent,
                                        // ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              product[index],
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text('(' + ratings[index] + ')'),
                                SizedBox(width: 10),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
