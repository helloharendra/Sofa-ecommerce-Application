import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scroll extends StatefulWidget {
  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  final ScrollController _controller = ScrollController();

  void _scrollToAbout() {
    _controller.animateTo(
      500, // Adjust this value according to your layout to scroll to the "About" section
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Scroll To Section'),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your Navbar
            Container(
              height: 60,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavItem(text: 'Home'),
                  NavItem(
                    text: 'About',
                    onPressed: _scrollToAbout,
                  ),
                  NavItem(text: 'Contact'),
                ],
              ),
            ),

            // Content Sections
            SizedBox(height: 20),
            Section(title: 'Home', color: Colors.green),
            SizedBox(height: 20),
            Section(title: 'About', color: Colors.orange),
            SizedBox(height: 20),
            Section(title: 'Contact', color: Colors.purple),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const NavItem({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final Color color;

  const Section({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: color,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
