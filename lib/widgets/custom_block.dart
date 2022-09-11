import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/row.dart';

class CustomerRow extends StatelessWidget {
  const CustomerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadText(data: 'Deepa'),
            const SizedBox(
              height: 8,
            ),
            OrderText(
              data: '+91-7829000484',
              color: Colors.grey,
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.call,
              color: Colors.blue,
              size: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.message,
              color: Colors.green,
              size: 40,
            ),
          ],
        )
      ],
    );
  }
}

class AddressBlock extends StatelessWidget {
  const AddressBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadText(data: 'Address'),
          const SizedBox(
            height: 2,
          ),
          OrderText(data: 'D 1101 Chartered Beverly'),
          OrderText(data: 'Hills, Subramayapura P.O'),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadText(data: 'City'),
                  const SizedBox(
                    height: 5,
                  ),
                  OrderText(data: 'Bangalore')
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadText(data: 'Pincode'),
                  const SizedBox(
                    height: 8,
                  ),
                  OrderText(data: '560061')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final Widget title;
  final Widget tileend;
  IconData? icon;
  Color? iconcolor;
  double? iconsize;
  CustomRow(
      {Key? key,
      required this.title,
      required this.tileend,
      this.icon,
      this.iconcolor,
      this.iconsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: iconsize,
                color: iconcolor,
              ),
              const SizedBox(
                width: 3,
              ),
              tileend,
            ],
          )
        ],
      ),
    );
  }
}

class PaymentRow extends StatelessWidget {
  const PaymentRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HeadText(data: 'Payment'), OrderText(data: 'Online')],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 240, 214),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: OrderText(
                  data: 'PAID',
                  color: Colors.green,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
