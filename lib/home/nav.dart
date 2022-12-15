import 'package:digi/core/constant.dart';
import 'package:digi/home/Invoice/invoice.dart';
import 'package:digi/login/login.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'Customers/customers.dart';
import 'Inventory/inventory.dart';
import 'Receipt/receipt.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  late PersistentTabController _controller;
  bool _hideNavBar = false;

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      Invoice(
        onNewCardTap: () {
          setState(() {
            _controller.index = 2;
          });
        },
        onSeeAllTap: () {
          setState(() {
            _controller.index = 1;
          });
        },
      ),
      Receipt(),
      Customers(),
      Inventory(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: Icon(Icons.description_outlined),
        icon: Icon(Icons.description_outlined),
        title: "Invoice",
        activeColorPrimary: Palette.mainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Icon(Icons.receipt_long_outlined),
        icon: Icon(Icons.receipt_long_outlined),
        title: "Receipt",
        activeColorPrimary: Palette.mainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Icon(Icons.groups_rounded),
        icon: Icon(Icons.groups_rounded),
        title: "Customers",
        activeColorPrimary: Palette.mainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Icon(Icons.inventory_2_outlined),
        icon: Icon(Icons.inventory_2_outlined),
        title: "Inventory",
        activeColorPrimary: Palette.mainColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView.custom(
        context,
        controller: _controller,
        screens: _buildScreens(),
        // navBarHeight: getProportionateScreenHeight(50),
        items: _navBarsItems(),
        confineInSafeArea: true,
        itemCount: 4,
        hideNavigationBar: _hideNavBar,
        customWidget: (navBarEssentials) => CustomNavBarWidget(
          items: _navBarsItems(),
          onItemSelected: (index) {
            setState(() {
              navBarEssentials.onItemSelected!(index);
            });
          },
          selectedIndex: _controller.index,
        ),
      ),
    );
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  const CustomNavBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: kBottomNavigationBarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 18.0,
                  color: isSelected
                      ? (item.activeColorSecondary ?? item.activeColorPrimary)
                      : item.inactiveColorPrimary ?? item.activeColorPrimary),
              child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                child: Text(
                  item.title!,
                  style: TextStyle(
                      color: isSelected
                          ? (item.activeColorSecondary ??
                              item.activeColorPrimary)
                          : item.inactiveColorPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await showModalBottomSheet(
          isScrollControlled: true,
          isDismissible: true,
          context: context,
          // backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
          builder: (context) => Login()),
      child: Container(
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.map((item) {
              int index = items.indexOf(item);
              return Expanded(
                child: InkWell(
                  onTap: () {
                    onItemSelected(index);
                  },
                  child: _buildItem(item, selectedIndex == index),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
