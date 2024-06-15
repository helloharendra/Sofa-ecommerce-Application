import 'package:flutter/material.dart';
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

class MyNavbar extends StatefulWidget {
  @override
  _MyNavbarState createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  String _selectedScreen = 'Home';
  bool _isHoveringCollections = false;
  bool _isHoveringSale = false;
  bool _isHoveringFurniture = false;
  bool _isHoveringOutdoor = false;
  bool _isHoveringAccents = false;
  bool _isHoveringInspiration = false;
  GlobalKey _collectionsKey = GlobalKey();
  GlobalKey _saleKey = GlobalKey();
  GlobalKey _furnitureKey = GlobalKey();
  GlobalKey _outdoorKey = GlobalKey();
  GlobalKey _accentsKey = GlobalKey();
  GlobalKey _inspirationKey = GlobalKey();

  void _changeScreen(String screen) {
    setState(() {
      _selectedScreen = screen;
      _isHoveringCollections = false;
      _isHoveringSale = false;
      _isHoveringFurniture = false;
      _isHoveringOutdoor = false;
      _isHoveringAccents = false;
      _isHoveringInspiration = false;
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
        return const Inspiration();
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
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _changeScreen('');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 45.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 40.0,
                        ),
                      ),
                    ),
                    _buildNavItem('Collections', key: _collectionsKey),
                    _buildNavItem('Furniture', key: _furnitureKey),
                    _buildNavItem('Outdoor', key: _outdoorKey),
                    _buildNavItem('Accents', key: _accentsKey),
                    _buildNavItem('Inspiration', key: _inspirationKey),
                    _buildNavItem('Sale', key: _saleKey),
                    _buildNavItem('Stores', icon: Icons.location_on),
                    _buildNavItem('Login', icon: Icons.person),
                    _buildNavItem('Search',
                        icon: Icons.search, isIconOnly: true),
                    _buildNavItem('Favorite',
                        icon: Icons.favorite_border, isIconOnly: true),
                    _buildNavItem('Cart',
                        icon: Icons.shopping_bag_outlined, isIconOnly: true),
                  ],
                ),
              ),
              Expanded(
                child: _buildScreen(),
              ),
            ],
          ),
          if (_isHoveringCollections) _buildDropdownMenu('Collections'),
          if (_isHoveringSale) _buildDropdownMenu('Sale'),
          if (_isHoveringFurniture) _buildDropdownMenu('Furniture'),
          if (_isHoveringOutdoor) _buildDropdownMenu('Outdoor'),
          if (_isHoveringAccents) _buildDropdownMenu('Accents'),
          if (_isHoveringInspiration) _buildDropdownMenu('Inspiration'),
        ],
      ),
    );
  }

  Widget _buildDropdownMenu(String menuType) {
    RenderBox renderBox;
    if (menuType == 'Collections') {
      renderBox =
          _collectionsKey.currentContext!.findRenderObject() as RenderBox;
    } else if (menuType == 'Sale') {
      renderBox = _saleKey.currentContext!.findRenderObject() as RenderBox;
    } else if (menuType == 'Furniture') {
      renderBox = _furnitureKey.currentContext!.findRenderObject() as RenderBox;
    } else if (menuType == 'Outdoor') {
      renderBox = _outdoorKey.currentContext!.findRenderObject() as RenderBox;
    } else if (menuType == 'Accents') {
      // Change this line to 'Inspiration'
      renderBox = _accentsKey.currentContext!.findRenderObject() as RenderBox;
    } else {
      renderBox =
          _inspirationKey.currentContext!.findRenderObject() as RenderBox;
    }

    Offset position = renderBox.localToGlobal(Offset.zero);

    return Positioned(
      top: position.dy + renderBox.size.height,
      left: position.dx,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            if (menuType == 'Collections') {
              _isHoveringCollections = true;
            } else if (menuType == 'Sale') {
              _isHoveringSale = true;
            } else if (menuType == 'Furniture') {
              _isHoveringFurniture = true;
            } else if (menuType == 'Outdoor') {
              _isHoveringOutdoor = true;
            } else if (menuType == 'Accents') {
              _isHoveringAccents = true;
            } else {
              _isHoveringInspiration = true;
            }
          });
        },
        onExit: (_) {
          setState(() {
            if (menuType == 'Collections') {
              _isHoveringCollections = false;
            } else if (menuType == 'Sale') {
              _isHoveringSale = false;
            } else if (menuType == 'Furniture') {
              _isHoveringFurniture = false;
            } else if (menuType == 'Outdoor') {
              _isHoveringOutdoor = false;
            } else if (menuType == 'Accents') {
              _isHoveringAccents = false;
            } else {
              _isHoveringInspiration = false;
            }
          });
        },
        child: Material(
          elevation: 4.0,
          child: Container(
            color: Colors.white,
            width: menuType == 'Furniture' ? 700 : null,
            child: menuType == 'Furniture'
                ? _buildMultiColumnDropdownMenu()
                : menuType == 'Outdoor'
                    ? _buildOutdoorDropdownMenu()
                    : menuType == 'Accents'
                        ? _buildAccentsDropdownMenu()
                        : menuType == 'Inspiration'
                            ? _buildInspirationDropdownMenu()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: menuType == 'Collections'
                                    ? [
                                        _buildDropdownMenuItem(
                                            'Manhattan Collection',
                                            'Manhattan Collection'),
                                        _buildDropdownMenuItem(
                                            'Incurve Episodes',
                                            'Incurve Episodes'),
                                        _buildDropdownMenuItem(
                                            'Home and Cottage',
                                            'Home and Cottage'),
                                        _buildDropdownMenuItem(
                                            'Miller Loung Series',
                                            'Miller Loung Series'),
                                        _buildDropdownMenuItem(
                                            'Bombay Club Collection',
                                            'Bombay Club Collection'),
                                        _buildDropdownMenuItem(
                                            'Saturn Table Collection',
                                            'Saturn Table Collection'),
                                        _buildDropdownMenuItem(
                                            'Travancore Roots',
                                            'Travancore Roots'),
                                        _buildDropdownMenuItem(
                                            'Ebba Collection',
                                            'Ebba Collection'),
                                        _buildDropdownMenuItem(
                                            'Advi Series', 'Advi Series'),
                                        _buildDropdownMenuItem(
                                            'Chandigarh Sangrah',
                                            'Chandigarh Sangrah'),
                                        _buildDropdownMenuItem(
                                            'Kobbler Collection',
                                            'Kobbler Collection'),
                                        _buildDropdownMenuItem(
                                            'Verandha Collection',
                                            'Verandha Collection'),
                                      ]
                                    : [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: [
                                              _buildDropdownMenuItem(
                                                  '60% Offer', '60% Offer'),
                                              _buildDropdownMenuItem(
                                                  '50% Offer', '50% Offer'),
                                              _buildDropdownMenuItem(
                                                  '40% Offer', '40% Offer'),
                                            ],
                                          ),
                                        )
                                      ],
                              ),
          ),
        ),
      ),
    );
  }

//furniture menu
  Widget _buildMultiColumnDropdownMenu() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Entryway',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem('Consoles', 'Consoles'),
                _buildDropdownMenuItem('Benches', 'Benches'),
                _buildDropdownMenuItem('Shoe Racks', 'Shoe Racks'),
                _buildDropdownMenuItem('swing', 'swing'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Living',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem(
                    'Sofa & Sectionals', 'Sofa & Sectionals'),
                _buildDropdownMenuItem(
                    'Chairs & Loveseat', 'Chairs & Loveseat'),
                _buildDropdownMenuItem(
                    'Accent | Loung Chairs', 'Accent | Loung Chairs'),
                _buildDropdownMenuItem('Daybeds & Diwans', 'Daybeds & Diwans'),
                _buildDropdownMenuItem('Coffee Table', 'Coffee Table'),
                _buildDropdownMenuItem('End Table', 'End Table'),
                _buildDropdownMenuItem('Ottomans | Stools & Benches',
                    'Ottomans | Stools & Benches'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Dining',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem(
                    'Sdining Collections', 'Sdining Collections'),
                _buildDropdownMenuItem('Dining Table', 'Dining Table'),
                _buildDropdownMenuItem('Dining Chairs', 'Dining Chairs'),
                _buildDropdownMenuItem('Dining Benches', 'Dining Benches'),
                _buildDropdownMenuItem(
                    'Bar & Counter Stools', 'Bar & Counter Stools'),
                _buildDropdownMenuItem('Buffet Consoles', 'Buffet Consoles'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Bedroom',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem('Beds', 'Beds'),
                _buildDropdownMenuItem('Nightstands', 'Nightstands'),
                _buildDropdownMenuItem('Dressers', 'Dressers'),
                _buildDropdownMenuItem(
                    'Armoires | Wardrobes', 'Armoires | Wardrobes'),
                _buildDropdownMenuItem(
                    'Ottomans & Benches', 'Ottomans & Benches'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Home office',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem('Writing Desk', 'Writing Desk'),
                _buildDropdownMenuItem('Writing Chair', 'Writing Chair'),
                _buildDropdownMenuItem('Book Shelves', 'Book Shelves'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Storage Furniture',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                _buildDropdownMenuItem('Storage Consoles', 'Storage Consoles'),
                _buildDropdownMenuItem(
                    'Bookcases | Shelves', 'Bookcases | Shelves'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'New Arrivals',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
//furniture menu End

//outdoor menu
  Widget _buildOutdoorDropdownMenu() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Outdoor loung',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem(
                  'Outdoor Sofas & Sectionals', 'Outdoor Sofas & Sectionals'),
              _buildDropdownMenuItem(
                  'Outdoor Loung Chairs', 'Outdoor Loung Chairs'),
              _buildDropdownMenuItem(
                  'Outdoor Gazebo Daybed', 'Outdoor Gazebo Daybed'),
              _buildDropdownMenuItem(
                  'Outdoor Coffee Tables', 'Outdoor Coffee Tables'),
              _buildDropdownMenuItem('Outdoor ottomans', 'Outdoor ottomans'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Outdoor Dining',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Outdoor Tables', 'Outdoor Tables'),
              _buildDropdownMenuItem(
                  'Outdoor Chairs & benches', 'Outdoor Chairs & benches'),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  'Outdoor Patio | Balcony',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  // Outdoor menu end

// Accents  menu
  Widget _buildAccentsDropdownMenu() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Mirrors',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Wall Mirrors', 'Wall Mirrors'),
              _buildDropdownMenuItem('Floor Mirors', 'Floor Mirors'),
              _buildDropdownMenuItem(
                  'Decorative Mirrors', 'Decorative Mirrors'),
              _buildDropdownMenuItem('Rugs', 'Rugs'),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Lighting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Pandant Lights', 'Pandant Lights'),
              _buildDropdownMenuItem('Table Lamps', 'Table Lamps'),
              _buildDropdownMenuItem('Flooor Lamps', 'Flooor Lamps'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Decorative Objects',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Decor Pieces', 'Decor Pieces'),
              _buildDropdownMenuItem('Bookends', 'Bookends'),
              _buildDropdownMenuItem(
                  'Lanterns & Candle holder', 'Lanterns & Candle holder'),
              _buildDropdownMenuItem(
                  'Cushions & Runners', 'Cushions & Runners'),
              _buildDropdownMenuItem('Planters', 'Planters'),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Storages',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Fabric Racks', 'Fabric Racks'),
              _buildDropdownMenuItem('Bags & Baskets', 'Bags & Baskets'),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'In-Stock Accents',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Art',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Paintings', 'Paintings'),
              _buildDropdownMenuItem('Sculpures', 'Sculpures'),
              _buildDropdownMenuItem('Decor', 'Decor'),
              _buildDropdownMenuItem('Wall Decor', 'Wall Decor'),
            ],
          ),
        ],
      ),
    );
  }
  // Accents  menu End

  //inspiration menu
  Widget _buildInspirationDropdownMenu() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Shop By Style',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              _buildDropdownMenuItem('Coastal Farmhouse', 'Coastal Farmhouse'),
              _buildDropdownMenuItem(
                  'Contemporary Modren', 'Contemporary Modren'),
              _buildDropdownMenuItem('Tropical Modern', 'Tropical Modern'),
              _buildDropdownMenuItem('Classic Modern', 'Classic Modern'),
              _buildDropdownMenuItem(
                  'Mid-century Modern', 'Mid-century Modern'),
              const SizedBox(height: 10),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20),
                child: Text(
                  'Projects',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  //inspiration menu Ens

  Widget _buildDropdownMenuItem(String title, String screen) {
    return InkWell(
      onTap: () {
        _changeScreen(screen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Text(title),
      ),
    );
  }

  Widget _buildNavItem(String title,
      {IconData? icon, bool isIconOnly = false, Key? key}) {
    return MouseRegion(
      key: key,
      onEnter: (_) {
        setState(() {
          if (title == 'Collections') {
            _isHoveringCollections = true;
          } else if (title == 'Sale') {
            _isHoveringSale = true;
          } else if (title == 'Furniture') {
            _isHoveringFurniture = true;
          } else if (title == 'Outdoor') {
            _isHoveringOutdoor = true;
          } else if (title == 'Accents') {
            _isHoveringAccents = true;
          } else if (title == 'Inspiration') {
            _isHoveringInspiration = true;
          }
        });
      },
      onExit: (_) {
        setState(() {
          if (title == 'Collections') {
            _isHoveringCollections = false;
          } else if (title == 'Sale') {
            _isHoveringSale = false;
          } else if (title == 'Furniture') {
            _isHoveringFurniture = false;
          } else if (title == 'Outdoor') {
            _isHoveringOutdoor = false;
          } else if (title == 'Accents') {
            _isHoveringAccents = false;
          } else if (title == 'Inspiration') {
            _isHoveringInspiration = false;
          }
        });
      },
      child: GestureDetector(
        onTap: () {
          _changeScreen(title);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
          child: isIconOnly
              ? Icon(icon, size: 20.0)
              : Row(
                  children: [
                    if (icon != null) Icon(icon, size: 20.0),
                    SizedBox(width: icon != null ? 10.0 : 0),
                    Text(
                      title,
                      style: TextStyle(
                        color: _selectedScreen == title
                            ? Colors.orange
                            : Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
