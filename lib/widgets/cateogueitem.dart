import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class catelogueitem extends StatefulWidget {
  final String productname;
  final String price;
  final String imageurl;

  const catelogueitem(
      {Key? key,
      required this.productname,
      required this.price,
      required this.imageurl})
      : super(key: key);

  @override
  State<catelogueitem> createState() => _catelogueitemState();
}

class _catelogueitemState extends State<catelogueitem> {
  get isSwitched => null;

  // var isSwitched;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: .7, color: const Color.fromARGB(255, 224, 224, 224)),
            borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                  height: 100,
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: ClipRRect(
                        child: Image.network(widget.imageurl),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 180.0,
                            child: Text(
                              widget.productname,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        '1 piece',
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '₹${widget.price}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 24, 24, 24),
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'in stock',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 196, 44),
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0),
                          ),
                          const SizedBox(
                            width: 95,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.toggle_on_rounded,
                              color: Colors.blue,
                              size: 34,
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
              height: 5,
            ),
            _underlinee(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.share,
                    size: 17,
                    color: Color.fromARGB(255, 44, 44, 44),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Share Product',
                    style: TextStyle(
                        color: Color.fromARGB(255, 24, 24, 24),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0),
                  ),
                ],
              ),
            )
          ]),
        ));
  }

  Widget _underlinee() {
    return Container(
      height: 5,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
    );
  }
}
