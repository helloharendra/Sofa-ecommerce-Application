import 'package:flutter/material.dart';
import 'package:project/widgets/cardWidget.dart';
import 'package:project/widgets/checkBoxWidget.dart';

class Accents extends StatefulWidget {
  const Accents({super.key});

  @override
  State<Accents> createState() => _AccentsState();
}

class _AccentsState extends State<Accents> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              // 1st image
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/accents1.jpg',
                        fit: BoxFit.cover,
                        width: 1150,
                        height: 400,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'DISCOVER EACH PIECE FROM OUR',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'ACCENTS',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //1st image End
              SizedBox(
                height: 50,
              ),

              // Catagory
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Browse By',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 212, 209, 209),
                          thickness: 1,
                        ),
                        Text(
                          'Product Type',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        /*  Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            Text('Chairs'),
                          ],
                        ), */
                        CheckBoxWidget(
                          text: 'Decor (23)',
                        ),
                        CheckBoxWidget(
                          text: 'Lighting (12)',
                        ),
                        CheckBoxWidget(
                          text: 'Vases (9)',
                        ),
                        CheckBoxWidget(
                          text: 'Mirrors (6)',
                        ),
                        Divider(
                          color: Color.fromARGB(255, 212, 209, 209),
                          thickness: 1,
                        ),
                        Text(
                          'Size',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckBoxWidget(
                          text: 'M (10)',
                        ),
                        CheckBoxWidget(
                          text: 'L (10)',
                        ),
                        CheckBoxWidget(
                          text: 'S (10)',
                        ),
                        Divider(
                          color: Color.fromARGB(255, 212, 209, 209),
                          thickness: 1,
                        ),
                        Text(
                          'Polish Finish',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CheckBoxWidget(
                          text: 'Dull Teak (10)',
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Text(
                          'Discount  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CheckBoxWidget(
                          text: '20% and abouve (2)',
                        ),
                        CheckBoxWidget(
                          text: '30% and abouve (2)',
                        ),
                        CheckBoxWidget(
                          text: '40% and abouve (2)',
                        ),
                        CheckBoxWidget(
                          text: '50% and abouve (2)',
                        ),
                      ],
                    )),
                    Expanded(
                        flex: 4,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            CardWidget(
                              image: AssetImage('assets/images/chair (16).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),
                            CardWidget(
                              image: AssetImage('assets/images/chair (17).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),
                            CardWidget(
                              image: AssetImage('assets/images/chair (18).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),
                            CardWidget(
                              image: AssetImage('assets/images/chair (19).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),
                            CardWidget(
                              image: AssetImage('assets/images/chair (20).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),
                            CardWidget(
                              image: AssetImage('assets/images/chair (21).jpg'),
                              productName: 'Product Name',
                              price: '₹ 89.000',
                              emiPrice: 'EMI from \$9.99/month',
                            ),

                            //new

                            //new End
                          ],
                        ))
                  ],
                ),
              )
              // Catagory End
            ])));
  }
}
