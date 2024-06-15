import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/screens/footer.dart';

class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              // Top Image
              Image.asset(
                'assets/images/collection.jpg',
                height: 400,
                width: 1150,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 50,
              ),

              Wrap(
                runSpacing: 20,
                spacing: 50,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/inspiration (7).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Manhattan Collection',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/inspiration (9).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Incurve Episodes',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/inspiration (8).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Home and Cottage',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //second row
              Wrap(
                runSpacing: 20,
                spacing: 50,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/inspiration (1).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Miller Loung Series',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/inspiration (2).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Bombay Club Collection',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/inspiration (3).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Saturn Table Collection',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //second row end
              SizedBox(
                height: 20,
              ),

              //3rd row
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                runSpacing: 20,
                spacing: 50,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/inspiration (4).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Travancore Roots',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/inspiration (5).jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Ebba Collection',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // height: 250,
                    // width: 350,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/livingroom.jpg',
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Advi Series',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //3rd row end
              SizedBox(
                height: 50,
              ),

              Footer(),

              SizedBox(
                height: 80,
              )
            ],
          ),
        ],
      ),
    );
  }
}
