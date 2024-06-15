import 'package:flutter/material.dart';
import 'package:project/screens/mynavbar.dart';
// import 'package:project/widgets/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyNavbar()
        // Responsive.isDesktop(context) || Responsive.isDesktopLarge(context)
        //     ? MyNavbar()
        //     : MyDrawer(),
        );
  }
}
