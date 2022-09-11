import 'dart:ui';

import 'package:flutter/material.dart';

class ScreeInformation extends StatelessWidget {
  Widget button({
    String? buttontext,
    Iconr,
    icontailing,
    iconcolor,
  }) {
    return ListTile(
      leading: 
      Icon(
        Iconr,
        size: 30,
      ),
      title: Text(
        buttontext!,
        style: TextStyle(fontSize: 18),
      ),
      trailing: Icon(
        icontailing,
        color: iconcolor,
        size: 40,
      ),
    );
  }

  const ScreeInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Additional Information')),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                button(
                    buttontext: "Share Dukaan App",
                    Iconr: Icons.share,
                    icontailing: Icons.navigate_next),
                button(
                    buttontext: 'Change Language',
                    Iconr: Icons.textsms_outlined,
                    icontailing: Icons.navigate_next),
                button(
                    buttontext: 'Whatsapp Chat Suppot',
                    Iconr: Icons.whatsapp,
                    icontailing: Icons.toggle_on_rounded,
                    iconcolor: Colors.blue),
                button(
                    buttontext: 'Privacy Policy', Iconr: Icons.lock_outlined),
                button(
                    buttontext: 'Rate us',
                    Iconr: Icons.star_border_purple500_outlined),
                button(buttontext: 'Sign Out', Iconr: Icons.logout),
              ],
            ),
            Column(
              children: [
                Text(
                  'version',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '2.4.2',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.all(20))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
