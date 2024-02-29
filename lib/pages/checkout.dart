import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukwala/pages/home.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

_showSuccessModalDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            constraints: const BoxConstraints(maxHeight: 350),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Icon(
                    Icons.shopping_bag_outlined,
                    size: 80,
                    color: Color(0xff205b4b),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Success",
                    style: GoogleFonts.inter(
                        color: const Color(0xff205b4b), fontSize: 32),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Your order has been placed and is being processed",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          color: Colors.black38, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff205b4b),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onPressed: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              )
                            },
                        child: Center(
                          child: Text(
                            "Continue shopping",
                            style: GoogleFonts.inter(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f9),
        title: Center(
          child: Text(
            "Checkout",
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
                  "Order Total",
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
                  onPressed: () => {_showSuccessModalDialog(context)},
                  child: Center(
                    child: Text(
                      "Pay \$ 15.00",
                      style: GoogleFonts.inter(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DELIVER TO",
                          style: GoogleFonts.inter(
                              color: Colors.black45,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kericho",
                              style: GoogleFonts.inter(
                                  color: Colors.black, fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.edit))
                          ],
                        ),
                        Text(
                          "Chebown centre, Ainapkoi ; H6C9+2H Kapsuser",
                          style: GoogleFonts.inter(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 110,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PAY WITH",
                          style: GoogleFonts.inter(
                              color: Colors.black45,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xfff6f7f9)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  "assets/visa.svg",
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xfff6f7f9)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/master.svg",
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xfff6f7f9)),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: SvgPicture.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/1/15/M-PESA_LOGO-01.svg",
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xfff6f7f9)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  "assets/pay.svg",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 330,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name on card",
                          style: GoogleFonts.inter(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black26),
                            ),
                            contentPadding: const EdgeInsets.all(10),
                            border: const OutlineInputBorder(),
                            hintText: 'Full name',
                            hintStyle: GoogleFonts.inter(
                                color: Colors.black38, fontSize: 12),
                          ),
                          style: GoogleFonts.inter(color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Card number",
                          style: GoogleFonts.inter(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black26),
                            ),
                            contentPadding: const EdgeInsets.all(10),
                            border: const OutlineInputBorder(),
                            hintText: '**** **** **** ****',
                            hintStyle: GoogleFonts.inter(
                                color: Colors.black38, fontSize: 12),
                          ),
                          style: GoogleFonts.inter(color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expiry",
                                    style: GoogleFonts.inter(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.black12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.black26),
                                      ),
                                      contentPadding: const EdgeInsets.all(10),
                                      border: const OutlineInputBorder(),
                                      // labelText: 'Name on card',
                                      hintText: 'MM/YY',
                                      hintStyle: GoogleFonts.inter(
                                          color: Colors.black38, fontSize: 12),
                                    ),
                                    style: GoogleFonts.inter(
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CVV",
                                    style: GoogleFonts.inter(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.black12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.black26),
                                      ),
                                      contentPadding: const EdgeInsets.all(10),
                                      border: const OutlineInputBorder(),
                                      hintText: '***',
                                      hintStyle: GoogleFonts.inter(
                                          color: Colors.black38, fontSize: 12),
                                    ),
                                    style: GoogleFonts.inter(
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
