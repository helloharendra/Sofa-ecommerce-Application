import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final ImageProvider<Object> image;
  final String productName;
  final String price;
  final String emiPrice;

  CardWidget({
    super.key,
    required this.image,
    required this.productName,
    required this.price,
    required this.emiPrice,
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isFavorite = false;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => _isHovered = true),
              onExit: (_) => setState(() => _isHovered = false),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: _isHovered
                        ? ElevatedButton(
                            onPressed: () {},
                            child: Text('Add to Cart'),
                          )
                        : Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 7,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Text(
                  'NEW',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 1,
              left: 200,
              child: IconButton(
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: _isFavorite ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ready to Shop',
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.productName,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.emiPrice,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
