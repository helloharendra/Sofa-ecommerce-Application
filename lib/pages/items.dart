import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final List<String> images = [
    'https://t4.ftcdn.net/jpg/04/07/36/33/240_F_407363322_h4CCYxucqCE9TnnnoWPJPvYSv5ftZv66.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-51MEjLbFqXZpQgs5QTY3fdHWbIJF9BSnyw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKLQpHkMcqGyvytxcOq_v92NZbuberOMb3uQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFg79rGT_gfOtcIh7f6GviZv71RdbWPzr6Kg&s',
    'https://t4.ftcdn.net/jpg/06/29/39/27/240_F_629392759_evvICW7eHp41fsKZITXXvhdVARtHnLcp.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSaUTkRrnuu6UIrX-UgGuz5YI92bePB5gTtA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT76rciJ3meZTci2xEikSvpgmPLZKPOSgXXDg&s',
    'https://t3.ftcdn.net/jpg/04/98/56/60/240_F_498566013_NJ6rQuOEFbuA9f5YgSaGzrwZ2E0k9fyL.jpg',
    'https://t4.ftcdn.net/jpg/03/06/02/09/240_F_306020971_imerrGBhtWaamiAdhRAeQw9VvS0GJior.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(images[index]),
            ),
          );
        },
      ),
    );
  }
}
