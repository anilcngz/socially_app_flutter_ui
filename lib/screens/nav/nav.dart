import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socially_app_flutter_ui/config/colors.dart';
import 'package:socially_app_flutter_ui/screens/home/home_screen.dart';
import 'package:socially_app_flutter_ui/screens/message/message_screen.dart';
import 'package:socially_app_flutter_ui/screens/profile/profile_screen.dart';
import 'package:socially_app_flutter_ui/screens/widgets/custom_button.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final _pages = [
    HomeScreen(),
    MessageScreen(),
    Text('Fav List'),
    ProfileScreen(),
  ];

  void _changePageTo(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      floatingActionButton: _selectedIndex == 1
          ? null
          : CustomButton(
              child: SvgPicture.asset('assets/icons/plus.svg'),
              onTap: () {},
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _selectedIndex == 1
          ? null
          : Container(
              height: 80.0,
              width: double.infinity,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 19.0),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                    offset: const Offset(0, 4),
                    color: kBlack.withOpacity(0.15),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => _changePageTo(0),
                    child: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: _selectedIndex == 0 ? kSelectedTabColor : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _changePageTo(1),
                    child: SvgPicture.asset(
                      'assets/icons/message.svg',
                      color: _selectedIndex == 1 ? kSelectedTabColor : null,
                    ),
                  ),
                  const SizedBox(),
                  GestureDetector(
                    onTap: () => _changePageTo(2),
                    child: SvgPicture.asset(
                      'assets/icons/favorite_border.svg',
                      color: _selectedIndex == 2 ? kSelectedTabColor : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _changePageTo(3),
                    child: SvgPicture.asset(
                      'assets/icons/profile.svg',
                      color: _selectedIndex == 3 ? kSelectedTabColor : null,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
