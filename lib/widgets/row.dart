import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremiumRow extends StatelessWidget {
  final IconData icon;
  final String one;
  final String two;
  const PremiumRow(
      {Key? key, required this.icon, required this.one, required this.two})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.blue)),
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderText(data: one),
              ContentText(
                data: two,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    );
  }
}

class HelpPremiumRow extends StatelessWidget {
  const HelpPremiumRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 38),
            child: Column(
              children: [
                Icon(Icons.message_rounded,
                    size: 40, color: Color.fromARGB(255, 114, 112, 112)),
                SizedBox(
                  height: 8,
                ),
                OrderText(
                  data: 'Live Chat',
                  color: Color.fromARGB(255, 114, 112, 112),
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 38),
            child: Column(
              children: [
                Icon(Icons.call,
                    size: 40, color: Color.fromARGB(255, 114, 112, 112)),
                SizedBox(
                  height: 8,
                ),
                OrderText(
                  data: 'Phone Call',
                  color: Color.fromARGB(255, 114, 112, 112),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DividerCustom extends StatelessWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      thickness: 1,
      indent: 0,
      endIndent: 0,
      color: Color.fromARGB(255, 184, 182, 182),
    );
  }
}

class HeadText extends StatelessWidget {
  final String data;
  Color? color;
  HeadText({Key? key, required this.data, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: color),
    );
  }
}

class ContentText extends StatelessWidget {
  final String data;
  Color? color;
  ContentText({Key? key, required this.data, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style:
          TextStyle(color: color, fontSize: 15, fontWeight: FontWeight.normal),
    );
  }
}

class OrderText extends StatelessWidget {
  final String data;
  Color? color;
  OrderText({Key? key, required this.data, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: color),
    );
  }
}
