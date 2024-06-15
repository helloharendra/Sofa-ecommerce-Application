import 'package:flutter/material.dart';
import 'package:project/collection%20pages/incurve_episodes.dart';
import 'package:project/pages/manhattan.dart';
import 'package:project/screens/accents.dart';
import 'package:project/screens/collections.dart';
import 'package:project/screens/favorite.dart';
import 'package:project/screens/furniture.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/inspiration.dart';
import 'package:project/screens/login.dart';
import 'package:project/screens/outdoor.dart';
import 'package:project/screens/sale.dart';
import 'package:project/screens/search.dart';
import 'package:project/screens/shopping.dart';
import 'package:project/screens/store.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  String _selectedScreen = 'Home';

  void _changeScreen(String screen) {
    setState(() {
      _selectedScreen = screen;
    });
  }

  Widget _buildScreen() {
    switch (_selectedScreen) {
      case 'Collections':
        return Collections();
      case 'Furniture':
        return Furniture();
      case 'Outdoor':
        return Outdoor();
      case 'Accents':
        return Accents();
      case 'Inspiration':
        return Inspiration();
      case 'Sale':
        return Sale();
      case 'Stores':
        return Stores();
      case 'Login':
        return Login();
      case 'Search':
        return Search();
      case 'Favorite':
        return Favorite();
      case 'Cart':
        return Shopping();
      case 'Manhattan Collection':
        return Manhattan();
      case 'Incurve Episodes':
        return Incurve_Episodes();
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DTALE Modern'),
      ),
      body: _buildScreen(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
              onTap: () {
                _changeScreen('Home');
                Navigator.pop(context);
              },
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/menu.JPG',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ListTile(
              title: Text('Collections'),
              onTap: () {
                _changeScreen('Collections');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manhattan Collection'),
              onTap: () {
                _changeScreen('Manhattan Collection');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Incurve Episodes'),
              onTap: () {
                _changeScreen('Incurve Episodes');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Furniture'),
              onTap: () {
                _changeScreen('Furniture');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Outdoor'),
              onTap: () {
                _changeScreen('Outdoor');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Accents'),
              onTap: () {
                _changeScreen('Accents');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Inspiration'),
              onTap: () {
                _changeScreen('Inspiration');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sale'),
              onTap: () {
                _changeScreen('Sale');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Stores'),
              onTap: () {
                _changeScreen('Stores');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                _changeScreen('Login');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Search'),
              onTap: () {
                _changeScreen('Search');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Favorite'),
              onTap: () {
                _changeScreen('Favorite');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cart'),
              onTap: () {
                _changeScreen('Cart');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
