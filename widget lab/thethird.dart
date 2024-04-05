import 'package:flutter/material.dart';

void main() {
  runApp(const Page3());
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 15),
              Text(
                'Order Details',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.all(8),
                              color: const Color.fromARGB(255, 216, 238, 191),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.check),
                                      Column(
                                        children: [
                                          Text(
                                            'Completed',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Order completed 24 july 2024')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              )),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Order Id'), Text('#543242')],
                          ),
                          const Divider(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Order Date'),
                              Text('20 july 2024 5:00 pm')
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Purchased Items',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                color: const Color.fromARGB(255, 136, 171, 187),
                                child: Image.asset('assets/Screenshot (14).png',
                                    width: 50, height: 50)),
                            const Column(
                              children: [
                                Text('Blue t-shirt',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Text('Size: L'),
                                Text('\$${50.00}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                          ],
                        ),
                        const Column(
                          children: [Text('Color: yellow'), Text('Qty: 1')],
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                color: const Color.fromARGB(255, 136, 171, 187),
                                child: Image.asset('assets/Screenshot (14).png',
                                    width: 50, height: 50)),
                            const Column(
                              children: [
                                Text('Hoddie Rose',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Text('Size: L'),
                                Text('\$${50.00}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                          ],
                        ),
                        const Column(
                          children: [Text('Color: yellow'), Text('Qty: 1')],
                        )
                      ],
                    ),
                  ],
                )),
            Container(
                color: Colors.white,
                margin: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text('Shipping Information'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name'),
                        Text(
                          'Jacob Jones',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phone number'),
                        Text('(105) 555_3652',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Address'),
                        Text('61234 sunbrook Park ',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shipment'),
                        Text('Economy',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  Align(alignment: Alignment.centerLeft,
                      child: Text('Payment information',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment method'),
                      Text('Cash On Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}