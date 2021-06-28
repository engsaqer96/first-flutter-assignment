import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/damy_data.dart';
import 'package:untitled/ui/widgets/FavListElement.dart';
import 'package:untitled/ui/widgets/bottomNavBarWidget.dart';
import 'package:untitled/ui/widgets/ListViewElement.dart';
import 'package:untitled/ui/widgets/statlesstest.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex=0;
  initTabController(){
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  void initState() {
    super.initState();
    initTabController();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
          title: Text('home'),
          backgroundColor: Colors.black.withOpacity(.4),
          bottom: TabBar(controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.home),
            text: 'home',),
            Tab(icon: Icon(Icons.favorite),
              text: 'favorite',),
            Tab(icon: Icon(Icons.perm_identity),
              text: 'identity',)
        ],
      )
        ,),



      body: TabBarView(controller:tabController
          ,children: [Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: MockData.mockData.getproducts().map((e) {
                        return Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(e.imgPath),
                        );
                      }).toList()),
                )),
            Expanded(
              flex: 2,

              child: ListView(
                children: MockData.mockData.getproducts().map((e) {
               return DemoListTile(e);
              }).toList()
              ,),
            )
          ],
        ),
      ),FavListView(),Center(child:Text('pre') ,)],),
      bottomNavigationBar: BottomNavigationBar(
    onTap: (tabIndex){
    this.currentIndex=tabIndex;
    tabController.animateTo(tabIndex);
    setState(() {});
    },
    currentIndex: currentIndex,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),
    BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: 'identity'),
    ],
    ));
  }
}


