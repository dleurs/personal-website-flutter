import 'package:flutter/material.dart';
import 'package:personal_website/generated/l10n.dart';
import 'package:personal_website/navigation/my_router_delegate.dart';
import 'package:personal_website/ui/components/flutter_icon_com_icons.dart';

class NavItem {
  Widget icon;
  String nameCode;
  Function(BuildContext context) onPressed;
  NavItem(
      {@required this.icon, @required this.nameCode, @required this.onPressed});
}

class NavItems {
  static List<NavItem> navItems = <NavItem>[
    NavItem(
      icon: Icon(FlutterIconCom.resume),
      nameCode: "resume_nav_item",
      onPressed: (context) {
        (Router.of(context).routerDelegate as MyRouterDelegate).toHomeScreen();
      },
    ),
    NavItem(
      icon: Icon(FlutterIconCom.smartphone_original),
      nameCode: "projects_nav_item",
      onPressed: (context) {},
    ),
    NavItem(
      icon: Icon(FlutterIconCom.time_is_money),
      nameCode: "time_money_nav_item",
      onPressed: (context) {},
    ),
    NavItem(
      icon: Icon(FlutterIconCom.bubble_speak),
      nameCode: "contact_me_nav_item",
      onPressed: (context) {},
    ),
  ];

  static String getNavItemName(BuildContext context, String nameCode) {
    if (nameCode == "resume_nav_item") {
      return S.of(context).resume_nav_item;
    } else if (nameCode == "projects_nav_item") {
      return S.of(context).projects_nav_item;
    } else if (nameCode == "time_money_nav_item") {
      return S.of(context).time_money_nav_item;
    } else if (nameCode == "contact_me_nav_item") {
      return S.of(context).contact_me_nav_item;
    } else
      return "Unknown";
  }
}
