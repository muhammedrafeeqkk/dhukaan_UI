import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/Information_Screen.dart';

import '../widgets/cateogueitem.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 235, 235),
        appBar: AppBar(
          title: const Text(
            'Catalogue',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => ScreeInformation()));
                },
                icon: const Icon(Icons.info_outline))
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: const [
                catelogueitem(
                    productname: 'Couch Potato|women|black',
                    price: '799',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/332/398/xif0q/dress/i/d/z/m-dv320-daevish-original-imag6fxn7fnrggra-bb.jpeg?q=50'),
                catelogueitem(
                    productname: 'Couch Potato|Men|black',
                    price: '799',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/832/832/kyxb9u80/dress/a/v/e/xxl-krupali8684-foxdx-original-imagbfywjh5rfgjx.jpeg?q=70'),
                SizedBox(
                  height: 8,
                ),
                catelogueitem(
                    productname: 'Mug|Explore',
                    price: '399',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/416/416/l4k7ssw0/cup-saucer/w/r/f/coffee-mugs-for-home-office-tee-coffee-love-unlimited-original-imagffzetdjrqzrq.jpeg?q=70'),
                SizedBox(
                  height: 8,
                ),
                catelogueitem(
                    productname: 'Combo Blahst 1|Pckage',
                    price: '699',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/832/832/kyxb9u80/dress/p/w/u/l-krupali8684-foxdx-original-imagbfyw3hhrrapw.jpeg?q=70'),
                SizedBox(
                  height: 8,
                ),
                catelogueitem(
                    productname: 'Mug|Orchard',
                    price: '449',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/612/612/kehfi4w0/cup-saucer/q/d/z/pack-of-6-bone-china-pack-of-bone-china-pack-of-6-tea-and-coffee-original-imafv5ffejcmz8zk.jpeg?q=70'),
                SizedBox(
                  height: 8,
                ),
                catelogueitem(
                    productname: 'Combo Blahst2|Explore',
                    price: '599',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/r/2/n/xxl-p-polo-c5-mrbggybkwt-ketex-original-imaebqcnsvgszs7x-bb.jpeg?q=70'),
                SizedBox(
                  height: 8,
                ),
                catelogueitem(
                    productname: 'I See Combo Pack',
                    price: '1,299',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/832/832/ktaeqvk0/shopsy-t-shirt/a/p/e/l-polo-c5-nbgrbggybk-funky-guys-original-imaf7nbg9g7fw8nb.jpeg?q=70'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
