import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/Payment_Screen.dart';
import 'package:flutter_application_1/screen/cateloguescreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget gridbox(
      {required text1,
      required text2,
      required boxcolor,
      required Icons1,
      newicon}) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 34,
                  height: 34,
                  child: Container(
                    decoration: BoxDecoration(
                      color: boxcolor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons1,
                      color: Colors.white,
                    ),
                  ),
                ),
                (newicon == null)
                    ? SizedBox()
                    : Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          newicon,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Manage Store',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 118,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15,
          ),
          children: [
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CatalogueScreen()),
                );
              }),
              child: gridbox(
                  text1: 'Marketing',
                  text2: 'Designs',
                  boxcolor: Color.fromARGB(255, 237, 111, 42),
                  Icons1: Icons.speaker_phone),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentScreen()),
                );
              },
              child: gridbox(
                  text1: 'Online',
                  text2: 'Payments',
                  boxcolor: Color.fromARGB(255, 40, 196, 45),
                  Icons1: Icons.credit_card),
            ),
            gridbox(
                text1: 'Discount',
                text2: 'Coupons',
                boxcolor: Color.fromARGB(255, 248, 190, 103),
                Icons1: Icons.disc_full),
            gridbox(
                text1: 'My',
                text2: 'Cusomers',
                boxcolor: Color.fromARGB(255, 43, 101, 149),
                Icons1: Icons.person),
            gridbox(
                text1: 'Store QR ',
                text2: 'Code',
                boxcolor: Colors.grey,
                Icons1: Icons.qr_code),
            gridbox(
                text1: 'Extra ',
                text2: 'Charges',
                boxcolor: Colors.blue,
                Icons1: Icons.money),
            gridbox(
                text1: 'Order',
                text2: 'Form',
                boxcolor: Colors.pinkAccent[700],
                Icons1: Icons.menu,
                newicon: 'NEW'),
            // gridbox(text1: text1, text2: text2, boxcolor: boxcolor, Icons1: Icons1)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_add_rounded,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.layers_outlined), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          // BottomNavigationBarItem(icon: IconButton(onPressed: onPressed, icon: icon))
        ],
      ),
    );
  }
}
