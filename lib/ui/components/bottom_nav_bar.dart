import 'package:flutter/material.dart';
import 'package:personal_website/models/nav_items.dart';
import 'package:personal_website/models/scroll_home_screen.dart';
import 'package:personal_website/ui/theme.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) scrollNavItem;
  BottomNavBar({@required this.scrollNavItem});

  @override
  Widget build(BuildContext context) {
    AppThemeNotifier theme =
        Provider.of<AppThemeNotifier>(context, listen: false);
    ScrollHomeScreen scrollProvider = Provider.of<ScrollHomeScreen>(context);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navPartToInt(scrollProvider.focusOn),
        onTap: scrollNavItem,
        unselectedItemColor: theme?.getTheme()?.hintColor ?? Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: theme?.getTheme()?.hintColor ?? Colors.grey,
        ),
        unselectedFontSize: 12.0,
        showUnselectedLabels: true,
        selectedItemColor: theme?.getTheme()?.accentColor ?? Colors.blue,
        selectedLabelStyle: TextStyle(
          color: theme?.getTheme()?.accentColor ?? Colors.blue,
        ),
        selectedFontSize: 14.0,

        //backgroundColor: theme.getTheme().accentColor,
        //type: BottomNavigationBarType.fixed,
        items: NavItems.navItems.map((NavItem navItem) {
          return BottomNavigationBarItem(
            icon: Icon(navItem.iconData),
            backgroundColor: Colors.white,
            label: NavItems.getNavItemName(context, navItem.navPart),
          );
        }).toList());
  }
}
