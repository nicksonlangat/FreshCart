import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukwala/pages/cart.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List products = [
    [
      "https://www.allthatgrows.in/cdn/shop/products/CABBAGE3_medium.jpg?v=1598079391",
      "Cabbage",
      "1Kg",
      "1.00"
    ],
    [
      "https://www.allthatgrows.in/cdn/shop/products/Capsicum-Red_medium.jpg?v=1598079508",
      "Capsicum",
      "1Kg",
      "1.00"
    ],
    [
      "https://www.allthatgrows.in/cdn/shop/products/Kale_3101882c-cda6-4191-a505-2ad849cbb489_medium.jpg",
      "Kales",
      "0.5Kg",
      "2.00"
    ],
    [
      "https://www.allthatgrows.in/cdn/shop/products/Tomato-Oval_600x600.jpg?v=1598083169",
      "Tomatoes",
      "1KG",
      "2.00",
      "assets/tom.png"
    ],
    [
      "https://www.allthatgrows.in/cdn/shop/products/96704814_l_medium.jpg?v=1598081721",
      "Onions",
      "1Kg",
      "1.00"
    ],
    [
      "https://www.allthatgrows.in/cdn/shop/products/Carrot_Red_medium.png?v=1598079759",
      "Carrots",
      "1Kg",
      "2.00"
    ],
    [
      "https://www.bidcoafrica.com/wp-content/uploads/2018/07/eliantoProduct.png",
      "Elianto",
      "3L",
      "6.00"
    ],
    [
      "https://www.delmontefoodservice.com/sites/default/files/2022-08/Del_Monte_Del_Monte_100_%20Pineapple_Juice_with_added_Vitamin_C_1200x1200.jpg",
      "Pineapple",
      "250ML",
      "2.00"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f9),
        title: Center(
          child: Text(
            "Your Orders",
            style: GoogleFonts.inter(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart_outlined)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OrdersPage(),
                  ),
                );
              },
              icon: const Icon(Icons.receipt))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff205b4b),
          unselectedItemColor: Colors.black26,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Orders")
          ]),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 100,
                      // width: 150,
                      margin: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                products[index][0],
                                height: 100,
                                width: 100,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    products[index][1],
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.black45),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: const Color(0xffff4300)),
                                        child: Center(
                                          child: Text(
                                            "\$ ${products[index][3]}",
                                            style: GoogleFonts.inter(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "\$ ${products[index][3]}",
                                        style: GoogleFonts.inter(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black45),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        products[index][2],
                                        style: GoogleFonts.inter(
                                            color: Colors.black45),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.check_circle,
                                color: Color(0xff205b4b),
                              )),
                        ],
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
