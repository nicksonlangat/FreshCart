import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukwala/pages/cart.dart';
import 'package:ukwala/pages/detail.dart';
import 'package:ukwala/pages/orders.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f9),
        leading: Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver to",
                    style: GoogleFonts.inter(color: Colors.black54),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Ainapkoi",
                          style: GoogleFonts.inter(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
        leadingWidth: 200,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: GoogleFonts.inter(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffffffff),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: "Search groceries",
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    hintStyle:
                        const TextStyle(color: Colors.black38, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _categoryTile("Vegetables", const Color(0xffe3ecbf),
                          "assets/vg.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      _categoryTile(
                          "Fruits", const Color(0xffe5e6ff), "assets/fru.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      _categoryTile(
                          "Juice", const Color(0xffffbbbe), "assets/fr.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      _categoryTile("Cooking Oil", const Color(0xfff6f4d6),
                          "assets/oil.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      _categoryTile(
                          "Liquor", const Color(0xfff3d6b8), "assets/dr.png"),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 310,
                          margin: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://quickmart.co.ke/wp-content/uploads/2024/02/Valentines-2024-Banner-01-scaled.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 310,
                          margin: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://quickmart.co.ke/wp-content/uploads/2023/11/Weekend-Offers-Website-Offers.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Featured Products",
                  style: GoogleFonts.inter(fontSize: 18, color: Colors.black87),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 185,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(product: products[index]),
                            ),
                          )
                        },
                        child: Container(
                          // height: 200,
                          width: 150,
                          margin: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Image.network(
                                  products[index][0],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      products[index][1],
                                      style: GoogleFonts.inter(
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      products[index][2],
                                      style: GoogleFonts.inter(
                                          color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ ${products[index][3]}",
                                      style: GoogleFonts.inter(
                                          // fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                          color: const Color(0xff214555)),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Color(0xff205b4b),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 185,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(product: products[index]),
                            ),
                          )
                        },
                        child: Container(
                          // height: 200,
                          width: 150,
                          margin: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Image.network(
                                  products[index][0],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      products[index][1],
                                      style: GoogleFonts.inter(
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      products[index][2],
                                      style: GoogleFonts.inter(
                                          color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ ${products[index][3]}",
                                      style: GoogleFonts.inter(
                                          // fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                          color: const Color(0xff214555)),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Color(0xff205b4b),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 185,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(product: products[index]),
                            ),
                          )
                        },
                        child: Container(
                          // height: 200,
                          width: 150,
                          margin: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Image.network(
                                  products[index][0],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      products[index][1],
                                      style: GoogleFonts.inter(
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      products[index][2],
                                      style: GoogleFonts.inter(
                                          color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ ${products[index][3]}",
                                      style: GoogleFonts.inter(
                                          // fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                          color: const Color(0xff214555)),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Color(0xff205b4b),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _categoryTile(String title, Color color, String image) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
      ],
    );
  }
}
