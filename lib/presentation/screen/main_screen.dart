import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_app/presentation/screen/favorite/favorite_screen.dart';
import 'package:travel_app/presentation/screen/home/home_screen.dart';
import 'package:travel_app/presentation/screen/location/location_screen.dart';
import 'package:travel_app/presentation/screen/setting/setting_screen.dart';

class MainScreen extends StatefulWidget {
   
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SelectPageProvider(
        selectedIndex: _selectedIndex,
        pageController: _pageController,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller:_pageController,
          children:const [
            HomeScreen(),
            LocationScreen(),
            FavoriteScreen(),
            SettingScreen()
          ],
        ),
      ),
      bottomNavigationBar:  GNav(
        backgroundColor:Colors.white,
        selectedIndex: 0,
        activeColor: const Color(0xFF1976d2),
        curve: Curves.linear,
        onTabChange: (value) {
          print(value);
          setState(() {
          _selectedIndex = value;
          });
        },
        tabs:const [
          GButton(
            gap: 15,
            icon: FontAwesomeIcons.house, text:'House',
            ),
          GButton(
            gap: 15,
            icon: FontAwesomeIcons.locationCrosshairs, text:'Location'),
          GButton(
            gap: 15,
            icon: FontAwesomeIcons.heart, text:'Location'),
          GButton(
            gap: 15,
            icon: FontAwesomeIcons.gears, text:'Settings'),
        ]
        ) ,
    );
  }
}

class SelectPageProvider extends InheritedWidget {

  final int selectedIndex;
  final PageController pageController;
  SelectPageProvider({
    Key? key,
    required this.pageController,
    required this.selectedIndex,
    required Widget child,
  }):super(key: key, child: child);

  @override
  bool updateShouldNotify(SelectPageProvider oldWidget) {
    pageController.animateToPage(selectedIndex, duration: const Duration(milliseconds: 550), curve: Curves.easeIn);
    // print(oldWidget);
  return true;
  }
}