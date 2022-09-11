import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class producttile extends StatelessWidget {
  final String orderid;
  final String month;
  final String price;
  final String imageurl;
  const producttile(
      {Key? key,
      required this.orderid,
      required this.month,
      required this.price,
      required this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  height: 65,
                  width: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.network(imageurl),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #$orderid',
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          month,
                          style: TextStyle(color: Colors.grey),
                          //  Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '₹$price',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 15,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Successful',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 107, 105, 105),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '₹$price deposited to: 58000987876',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 107, 105, 105),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
