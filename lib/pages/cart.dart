import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukwala/pages/checkout.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f9),
        title: Center(
          child: Text(
            "Your Cart",
            style: GoogleFonts.inter(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      bottomNavigationBar: Container(
        height: 46,
        margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cart Total",
                  style: GoogleFonts.inter(color: Colors.black54, fontSize: 16),
                ),
                Text(
                  "\$ 15.00",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff205b4b),
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CheckoutPage(),
                          ),
                        )
                      },
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: GoogleFonts.inter(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          "https://www.allthatgrows.in/cdn/shop/products/CABBAGE3_medium.jpg?v=1598079391",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Cabbage",
                              style: GoogleFonts.inter(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  color: Color(0xff205b4b),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.add_circle,
                                  color: Color(0xff205b4b),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: Colors.black45,
                                icon: const Icon(Icons.delete_outline)),
                            Text(
                              "\$ 3.00",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black12,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://www.allthatgrows.in/cdn/shop/products/Capsicum-Red_medium.jpg?v=1598079508",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Capsicum",
                              style: GoogleFonts.inter(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  color: Color(0xff205b4b),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "2",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.add_circle,
                                  color: Color(0xff205b4b),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: Colors.black45,
                                icon: const Icon(Icons.delete_outline)),
                            Text(
                              "\$ 2.00",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black12,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://www.allthatgrows.in/cdn/shop/products/Carrot_Red_medium.png?v=1598079759",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Carrots",
                              style: GoogleFonts.inter(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  color: Color(0xff205b4b),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.add_circle,
                                  color: Color(0xff205b4b),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: Colors.black45,
                                icon: const Icon(Icons.delete_outline)),
                            Text(
                              "\$ 2.00",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black12,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://www.allthatgrows.in/cdn/shop/products/Tomato-Oval_600x600.jpg?v=1598083169",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Tomatoes",
                              style: GoogleFonts.inter(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove_circle,
                                  color: Color(0xff205b4b),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "3",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.add_circle,
                                  color: Color(0xff205b4b),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                color: Colors.black45,
                                icon: const Icon(Icons.delete_outline)),
                            Text(
                              "\$ 1.00",
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Column(
                        children: [
                          const Divider(
                            color: Colors.black12,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "\$ 7.00",
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Delivery",
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "\$ 1.00",
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "VAT",
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "\$ 0.00",
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
