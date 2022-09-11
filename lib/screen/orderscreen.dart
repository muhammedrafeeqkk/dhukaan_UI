import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/Payment_Screen.dart';
import 'package:flutter_application_1/widgets/custom_block.dart';

import '../widgets/orderblock.dart';
import '../widgets/row.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (ctx) => PaymentScreen()));
          },
        ),
        title: const Text(
          'Order #1688068',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomRow(
                title: const Text(
                  'May 31, 05:42 PM',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                // OrderText(data: '',),
                tileend: OrderText(
                  data: 'Delivered',
                  color: Colors.grey,
                ),
                icon: Icons.circle,
                iconcolor: Colors.blue,
                iconsize: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              const DividerCustom(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomRow(
                  title: OrderText(
                    data: '1 ITEM',
                    color: Colors.grey,
                  ),
                  tileend: OrderText(
                    data: 'RECIEPT',
                    color: Colors.blue,
                  ),
                  icon: Icons.receipt_outlined,
                  iconcolor: Colors.blue,
                  iconsize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const OrderBlock(),
              const SizedBox(
                height: 15,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                  title: OrderText(
                    data: 'Item Total',
                    color: Colors.grey[600],
                  ),
                  tileend: OrderText(
                    data: '₹799',
                  )),
              CustomRow(
                  title: OrderText(
                    data: 'Delivery',
                    color: Colors.grey[600],
                  ),
                  tileend: OrderText(
                    data: 'FREE',
                    color: Colors.green,
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomRow(
                  title: HeadText(
                    data: 'Grand Total',
                    color: Colors.black87,
                  ),
                  tileend: HeadText(data: '₹799')),
              const SizedBox(
                height: 15,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                  title: OrderText(
                    data: 'CUSTOMER DETAILS',
                    color: Colors.grey,
                  ),
                  icon: Icons.share,
                  iconcolor: Colors.blue,
                  tileend: OrderText(
                    data: 'SHARE',
                    color: Colors.blue,
                  )),
              const SizedBox(
                height: 20,
              ),
              const CustomerRow(),
              const SizedBox(
                height: 20,
              ),
              const AddressBlock(),
              const SizedBox(
                height: 20,
              ),
              const PaymentRow(),
              const SizedBox(
                height: 12,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderText(
                      data: 'ADDITIONAL INFORMATION',
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    HeadText(data: 'State'),
                    const SizedBox(
                      height: 5,
                    ),
                    OrderText(data: 'Karnataka'),
                    const SizedBox(
                      height: 20,
                    ),
                    HeadText(data: 'Email'),
                    const SizedBox(
                      height: 8,
                    ),
                    OrderText(data: 'greessm@gmail.com'),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Center(
                            child: OrderText(
                          data: 'Share recipt',
                          color: Colors.blue,
                        )),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
