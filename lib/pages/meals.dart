import 'package:flutter/material.dart';

class Meals extends StatefulWidget {
  const Meals({Key? key}) : super(key: key);

  @override
  State<Meals> createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5ftGH7E2TdBjScg5d8X8fMjlmWSvh_vrmA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS299tS8FnjOVMMHqTxbgGXF_fRvw1FjHaZxQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw8kQzFgLfrOaIKLVNpznfWfy4d1xP1nVv2w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OWsKtn7UmVXCZcFQJTE1AtQjJOZFbCh6fQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlF1LH8netbYg1FUerMQ6WBlVpY5xIBPorjA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTgW3rVRySESLwXwkUMDHagrl_Zrzrtuzh6A&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoAfj2gJJrFDvseK83cmwZwiRz7M324RU8hA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdmo2VZUJnlY11xA5GRCnc4uqWJFSffm8DMA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrM0S3ORPZHrehmX43tY16c-CGJ3wWTSnjXw&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200, // Set desired height
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(images[index]),
              ),
            );
          },
        ));
  }
}
