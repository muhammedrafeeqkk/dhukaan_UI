import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Color color;
  Color? textcolor;
  final double paddingh;
  final double paddingv;
  final double font;
  final double radius;
  final String text;
  ButtonCustom(
      {Key? key,
      this.textcolor,
      required this.color,
      required this.paddingh,
      required this.paddingv,
      required this.font,
      required this.radius,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            padding:
                EdgeInsets.symmetric(horizontal: paddingh, vertical: paddingv),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ));
  }
}
