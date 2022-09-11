import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Payment_Screen.dart';
import 'package:flutter_application_1/widgets/row.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double? expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        // Image.network(
        //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        //   fit: BoxFit.cover,
        // ),
        Container(
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                        builder: ((context) => PaymentScreen())));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              // IconButton(
              //   Icons.arrow_back,
              //   color: Colors.white,
              // ),
              SizedBox(
                width: 75,
              ),
              Text(
                "Dukaan Premium",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: expandedHeight! / 2.6 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 28,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight!),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                            width: 180,
                            child: Image.network(
                                'https://mydukaan.io/blog/wp-content/uploads/2021/04/dukaan_blog.png')),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HeadText(data: 'Get Dukaan premium For Just'),
                      const SizedBox(
                        height: 8,
                      ),
                      HeadText(data: '₹4,999/year'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'All the advanced features for scaling your \n buisness',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                      // ContentText(data: 'All the advanced features for\nscaling your')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight!;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.grey),
          child: FittedBox(
            fit: BoxFit.cover,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                  'https://images.livemint.com/img/2021/06/18/600x338/p_(3)_1624019979294_1624019988675.jpg'),
            ),
          ),
        ),
        Positioned(
            top: 80,
            left: 130,
            child: Container(
              height: 40,
              width: 100,
              child: FittedBox(
                fit: BoxFit.cover,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://i.pinimg.com/originals/de/1c/91/de1c91788be0d791135736995109272a.png'),
                ),
              ),
            )),
      ],
    );
  }
}
