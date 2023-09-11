import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/drops_tab.dart';
import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/search_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    SearchTab(),
    DropsTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: ClipRRect(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).cardColor,
              iconSize: 24,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0 ? SvgPicture.asset(
                    "assets/icons/video-fill.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/video.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1 ? SvgPicture.asset(
                    "assets/icons/search.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/search.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 2 ? SvgPicture.asset(
                    "assets/icons/gift-fill.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/gift.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                 BottomNavigationBarItem(
                  icon: _selectedIndex == 3 ? SvgPicture.asset(
                    "assets/icons/profile-fill.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/profile.svg",
                    colorFilter: ColorFilter.mode(Theme.of(context).canvasColor, BlendMode.srcIn),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}