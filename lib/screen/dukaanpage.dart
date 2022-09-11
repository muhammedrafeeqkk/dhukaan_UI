import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/buttom.dart';
import 'package:flutter_application_1/widgets/row.dart';

import '../widgets/silverappbar.dart';

class screendukaan extends StatefulWidget {
  const screendukaan({Key? key}) : super(key: key);

  @override
  State<screendukaan> createState() => _screendukaanState();
}

class _screendukaanState extends State<screendukaan> {
  bool _customTileExpanded = false;
  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 160),
                // pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 140),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadText(data: 'Features'),
                              const SizedBox(
                                height: 16,
                              ),
                              const PremiumRow(
                                  icon: Icons.language,
                                  one: 'Custom domain name',
                                  two:
                                      'Get your own domain and build \nyour brand on internet'),
                              const SizedBox(
                                height: 16,
                              ),
                              const PremiumRow(
                                  icon: Icons.verified,
                                  one: 'Verified Seller badge',
                                  two:
                                      'Get your own domain and build \nyour brand on internet'),
                              const SizedBox(
                                height: 16,
                              ),
                              const PremiumRow(
                                  icon: Icons.laptop,
                                  one: 'Dukaan for PC',
                                  two:
                                      'Get your own domain and build \nyour brand on internet'),
                              const SizedBox(
                                height: 16,
                              ),
                              const PremiumRow(
                                  icon: Icons.mic,
                                  one: 'Priority Support',
                                  two:
                                      'Get your own domain and build \nyour brand on internet'),
                              const SizedBox(
                                height: 16,
                              ),
                              const DividerCustom(),
                              const SizedBox(
                                height: 16,
                              ),
                              HeadText(data: 'What is Dukaan premium?'),
                              const SizedBox(
                                height: 16,
                              ),
                              const CustomStack(),
                              const SizedBox(
                                height: 16,
                              ),
                              const DividerCustom(),
                              const SizedBox(
                                height: 16,
                              ),
                              HeadText(data: 'Frequently asked questions'),
                              const SizedBox(
                                height: 16,
                              ),
                              const DividerCustom(),
                              ExpansionTile(
                                title: const Text(
                                  'What types of business can use Dukaan Premium?',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                textColor: Colors.black,
                                iconColor: Colors.grey,
                                trailing: Icon(
                                  _customTileExpanded
                                      ? Icons.minimize
                                      : Icons.add,
                                ),
                                children: <Widget>[
                                  Text(
                                    'Data are Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tempor imperdiet. Fusce dignissim hendrerit pulvinar. Mauris tortor velit, congue id laoreet non, condimentum tempus lacus. Suspendisse potenti. Curabitur at augue condimentum, tincidunt nisl sed, blandit turpis. Morbi justo dui, finibus',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(
                                      () => _customTileExpanded = expanded);
                                },
                              ),
                              ExpansionTile(
                                title: const Text(
                                  'What is your Refund policy',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                textColor: Colors.black,
                                iconColor: Colors.grey,
                                trailing: Icon(
                                  _customTileExpanded1
                                      ? Icons.minimize
                                      : Icons.add,
                                ),
                                children: <Widget>[
                                  Text(
                                    'Data are Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tempor imperdiet. Fusce dignissim hendrerit pulvinar. Mauris tortor velit, congue id laoreet non, condimentum tempus lacus. Suspendisse potenti. Curabitur at augue condimentum, tincidunt nisl sed, blandit turpis. Morbi justo dui, finibus',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(
                                      () => _customTileExpanded1 = expanded);
                                },
                              ),
                              ExpansionTile(
                                title: const Text(
                                  'What payment method do you offer',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                textColor: Colors.black,
                                iconColor: Colors.grey,
                                trailing: Icon(
                                  _customTileExpanded2
                                      ? Icons.minimize
                                      : Icons.add,
                                ),
                                children: <Widget>[
                                  Text(
                                    'Data are Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tempor imperdiet. Fusce dignissim hendrerit pulvinar. Mauris tortor velit, congue id laoreet non, condimentum tempus lacus. Suspendisse potenti. Curabitur at augue condimentum, tincidunt nisl sed, blandit turpis. Morbi justo dui, finibus',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(
                                      () => _customTileExpanded2 = expanded);
                                },
                              ),
                              ExpansionTile(
                                title: const Text(
                                  'What happens when free trial expires',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                textColor: Colors.grey,
                                iconColor: Colors.grey,
                                trailing: Icon(
                                  _customTileExpanded3
                                      ? Icons.minimize
                                      : Icons.add,
                                ),
                                children: <Widget>[
                                  Text(
                                    'Data are Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tempor imperdiet. Fusce dignissim hendrerit pulvinar. Mauris tortor velit, congue id laoreet non, condimentum tempus lacus. Suspendisse potenti. Curabitur at augue condimentum, tincidunt nisl sed, blandit turpis. Morbi justo dui, finibus',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(
                                      () => _customTileExpanded3 = expanded);
                                },
                              ),
                              ExpansionTile(
                                title: const Text(
                                  'What are the terms of custom domain',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                                textColor: Colors.black,
                                iconColor: Colors.black,
                                trailing: Icon(
                                  _customTileExpanded4
                                      ? Icons.minimize
                                      : Icons.add,
                                ),
                                children: <Widget>[
                                  Text(
                                    'Data are Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tempor imperdiet. Fusce dignissim hendrerit pulvinar. Mauris tortor velit, congue id laoreet non, condimentum tempus lacus. Suspendisse potenti. Curabitur at augue condimentum, tincidunt nisl sed, blandit turpis. Morbi justo dui, finibus',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                                onExpansionChanged: (bool expanded) {
                                  setState(
                                      () => _customTileExpanded4 = expanded);
                                },
                              ),
                              const DividerCustom(),
                              const SizedBox(
                                height: 20,
                              ),
                              HeadText(
                                data: 'Need Help? Get in touch',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const HelpPremiumRow(),
                              const SizedBox(
                                height: 15,
                              ),
                              const DividerCustom(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: HeadText(
                                          data: 'Select Domain',
                                          color: Colors.blue,
                                        )),
                                    ButtonCustom(
                                        color: Colors.blue,
                                        paddingh: 20,
                                        paddingv: 10,
                                        font: 17,
                                        radius: 10,
                                        text: 'Get Premium')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
