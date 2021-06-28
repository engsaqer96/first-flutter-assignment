import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget{
  TabController tabController;
  NavBar(this.tabController);
  @override
  _NavBarState createState() => _NavBarState(tabController);
}

class _NavBarState extends State<NavBar> {
  TabController tabController;
  int currentIndex=0;
  _NavBarState(this.tabController);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (tabIndex){
        currentIndex=tabIndex;
        tabController.animateTo(currentIndex);
        setState(() {});
      },
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: 'identity'),
      ],
    );
  }
}