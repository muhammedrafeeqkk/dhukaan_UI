import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/row.dart';

class OrderBlock extends StatelessWidget {
  const OrderBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 235, 234, 234)),
                    borderRadius: BorderRadius.circular(5)),
                height: 70,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: ClipRRect(
                      child: Image.network(
                          'https://rukminim1.flixcart.com/image/832/832/ktaeqvk0/shopsy-t-shirt/a/p/e/l-polo-c5-nbgrbggybk-funky-guys-original-imaf7nbg9g7fw8nb.jpeg?q=70'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 220.0,
                      child: Text(
                        'Explore| Men | White ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      '1 piece',
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 90, 90),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Size: XL',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(3),
                                  color:
                                      const Color.fromARGB(255, 223, 240, 253)),
                              child: Center(
                                child: OrderText(data: '1'),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            OrderText(
                              data: 'x ₹799',
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 170,
                        ),
                        OrderText(data: '₹799')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ]));
  }
}
