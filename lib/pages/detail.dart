import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.product});

  final List product;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f9),
        title: Center(
          child: Text(
            "Product Details",
            style: GoogleFonts.inter(color: Colors.black54),
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
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        onPressed: () {},
                        color: const Color(0xff205b4b),
                        icon: const Icon(Icons.remove))),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "1",
                  style: GoogleFonts.inter(color: Colors.black54, fontSize: 25),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                      onPressed: () {},
                      color: const Color(0xff205b4b),
                      icon: const Icon(Icons.add)),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff205b4b),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                onPressed: () => {},
                child: Center(
                  child: Text(
                    "Add to cart",
                    style: GoogleFonts.inter(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Center(child: Image.network(widget.product[0])),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xff205b4b),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.8 Rating",
                          style: GoogleFonts.inter(
                              color: const Color(0xff205b4b), fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product[1],
                              style: GoogleFonts.inter(
                                  color: Colors.black87, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$${widget.product[3]}",
                              style: GoogleFonts.inter(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            color: const Color(0xff205b4b),
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.bolt,
                      color: Color(0xffff4500),
                    ),
                    Text(
                      "Available on fast delivery",
                      style: GoogleFonts.inter(
                          color: Colors.black54, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style:
                          GoogleFonts.inter(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "100% unmatched freshness and satisfaction guaranteed! This product is directly produced the same day and it's organic, highly nutritive and healthy. Get a refund if you encounter issues with the product.",
                      style: GoogleFonts.inter(
                          color: Colors.black54, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
