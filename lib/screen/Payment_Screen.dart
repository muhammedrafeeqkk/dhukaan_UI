import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/Information_Screen.dart';
import 'package:flutter_application_1/screen/dukaanpage.dart';
import 'package:flutter_application_1/screen/orderscreen.dart';
import 'package:flutter_application_1/widgets/poduct_tile.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PaymentScreen extends StatelessWidget {
  Widget textcard(
      {required subtext, required titletext, required subicons, titleweight}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            subtext,
            style: TextStyle(fontSize: 15, fontWeight: titleweight),
          ),
        ),
        Row(
          children: [
            Text(
              titletext,
              style: TextStyle(color: Colors.grey),
            ),
            Icon(
              subicons,
              color: Colors.grey,
              size: 18,
            ),
          ],
        )
      ],
    );
  }

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_outlined),
          title: Center(child: Text('Payments')),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const screendukaan()),
                  );
                },
                icon: Icon(Icons.info_outline))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 198,
              // color: Colors.black,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.black,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'A free limit up to which you will receive \nthe online payments directly in your bank',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // width: double.infinity,
                    child: LinearPercentIndicator(
                      barRadius: Radius.circular(5),
                      width: 330.0,
                      lineHeight: 7.0,
                      percent: 0.35,
                      padding: EdgeInsets.all(0),
                      progressColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '36,668 left out of ₹50,000',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Increase limit'),
                  ),
                  // SizedBox(
                  //   child: Container(
                  //     height: 25,
                  //     width: 120,
                  //     padding: EdgeInsets.all(5),
                  //     child: Text(
                  //       '   Increase limit',
                  //       style: TextStyle(
                  //           color: Colors.white, fontWeight: FontWeight.bold),
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: Colors.blue,
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 68,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Column(
                children: [
                  Column(
                    children: [
                      textcard(
                        subtext: 'Default Method',
                        titletext: 'Online Payments',
                        subicons: Icons.arrow_forward_ios,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      textcard(
                          subtext: 'Payment Profile',
                          titletext: 'Bank Account',
                          subicons: Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            textcard(
                subtext: 'payment Overview',
                titletext: 'Life Time',
                subicons: Icons.arrow_downward_sharp),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 100,
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange[900]),
                        width: 160,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(color: Colors.white60),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹1,000',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green),
                            width: 160,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    'AMOUNT RECEIVED',
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '₹13,332',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Transactions',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mybutton(
                    // dubliwidth: 18,
                    dublicolor: Colors.grey[300],
                    dublitextcolor: Colors.grey,
                    dublitext: 'On hold'),
                mybutton(
                    dublicolor: Colors.blue,
                    dublitextcolor: Colors.white,
                    dublitext: 'Payouts(8)'),
                mybutton(
                    dublicolor: Colors.grey[300],
                    dublitextcolor: Colors.grey,
                    dublitext: 'Refunds')
              ],
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()),
                );
              }),
              child: const producttile(
                  orderid: '1688068',
                  month: 'jul 12, 02:06 PM',
                  price: '799',
                  imageurl:
                      // "https://media.istockphoto.com/photos/still-life-shot-of-coffee-beans-picture-id1349239410?s=612x612 "
                      'https://rukminim1.flixcart.com/image/832/832/ktaeqvk0/shopsy-t-shirt/a/p/e/l-polo-c5-nbgrbggybk-funky-guys-original-imaf7nbg9g7fw8nb.jpeg?q=70'),
            ),
            underline(),
            const producttile(
                orderid: '1457741',
                month: 'Apr 12, 07:47 aM',
                price: '397.4',
                imageurl:
                    'https://rukminim1.flixcart.com/image/832/832/l0bbonk0/short/l/s/9/m-checkers-cut-sew-shorts-naughty-men-original-imagc4xfpuupavhz.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '1408896',
                month: 'Apr 11, 10:54 aM',
                price: '686.42',
                imageurl:
                    'https://rukminim1.flixcart.com/image/832/832/jwdupow0/t-shirt/x/6/z/s-aff-0017-0016-0015-ample-original-imafdmmfqdq4zgcj.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '14045896',
                month: 'Apr 12, 07:47 aM',
                price: '1123.5',
                imageurl:
                    'https://rukminim1.flixcart.com/image/832/832/l0bbonk0/short/s/a/z/m-checkers-cut-sew-shorts-naughty-men-original-imagc4xf8jyzt4kb.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '16854568',
                month: 'Mar 12, 02:06 PM',
                price: '1722.75',
                imageurl:
                    // "https://media.istockphoto.com/photos/still-life-shot-of-coffee-beans-picture-id1349239410?s=612x612 "
                    'https://rukminim1.flixcart.com/image/832/832/jwdupow0/t-shirt/x/6/z/s-aff-0017-0016-0015-ample-original-imafdmmfqdq4zgcj.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '14555551',
                month: 'Mar 12, 07:47 aM',
                price: '884',
                imageurl:
                    'https://rukminim1.flixcart.com/image/416/416/l4k7ssw0/cup-saucer/w/r/f/coffee-mugs-for-home-office-tee-coffee-love-unlimited-original-imagffzetdjrqzrq.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '140889156',
                month: 'Mar 11, 10:54 aM',
                price: '627.56',
                imageurl:
                    'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/v/u/1/6-ga3045-6-adidas-shanav-altblu-tecind-orarus-original-imaggz4jvbkzam6g.jpeg?q=70'),
            underline(),
            const producttile(
                orderid: '1404545896',
                month: 'Feb 12, 07:47 aM',
                price: '2023.5',
                imageurl:
                    'https://rukminim1.flixcart.com/image/832/832/xif0q/shoe/m/f/h/11-ga3043-11-adidas-brown-chabrn-cblack-aciyel-original-imaggfa7qswx3qxd.jpeg?q=70')
          ],
        ));
  }

  Widget mybutton({
    // required dubliwidth,
    required dublicolor,
    required dublitextcolor,
    required dublitext,
  }) {
    return Row(
      children: [
        Container(
            width: 100,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: dublicolor),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  dublitext,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: dublitextcolor),
                ),
              ],
            ))
      ],
    );
  }

  Widget underline() {
    return Container(
      height: 10,
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
    );
  }
}
