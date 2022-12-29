import 'package:flutter/material.dart';
import 'package:rent/constant.dart';
import 'package:rent/screen/booking_sceen.dart';
import 'package:rent/screen/home_screen.dart';
import 'package:rent/screen/order_screen.dart';

void main() {
  runApp(const InitialApp());
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent apps',
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationWidget(),
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        backgroundColor: kBackgroudColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        scaffoldBackgroundColor: kBackgroudColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: kPrimaryColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kBackgroudColor,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentIndex = 0;
  final List<Widget> pages = <Widget>[
    const HomeScreen(),
    const BookingScreen(),
    const OrderScreen(),
    const Text('Favorite'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.chat), onPressed: () {}),
    );
  }
}
