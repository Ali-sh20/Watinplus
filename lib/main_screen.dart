import 'package:flutter/material.dart';
import 'package:watinplus/Screens/Artboard12.dart';
import 'package:watinplus/on_boarding/Artboard4.dart';

import 'Screens/Artboard8.dart';
import 'on_boarding/Artboard2.dart';
import 'on_boarding/Artboard3.dart';



Color primary = Color(0xFF3366FF);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Mentor101',
    home: MyApp(),
    theme: ThemeData(
        primaryColor: primary,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 36, fontWeight: FontWeight.w600, color: Colors.white),
        )),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  //for bottom tab
  int currentIndex = 0;
  final _screens = [Artboard8(), Artboard12(), Artboard8()];

  // for Tab Bar
  late TabController todoTabCon;
  late TabController moodTabCon;
  late TabController journalTabCon;

  @override
  void initState() {
    super.initState();
    todoTabCon = TabController(vsync: this, length: 3);
    moodTabCon = TabController(vsync: this, length: 2);
    journalTabCon = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    todoTabCon.dispose();
    moodTabCon.dispose();
    journalTabCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'title',
          style: Theme
              .of(context)
              .textTheme
              .headline1,
        ),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        bottom: getTabBar(),
      ),
      // drawer: mainDrawer(context),
      body: mainBody(),
      bottomNavigationBar: myBottomBar(),
    );
  }

  // ---------------------------------APP BAR STARTS-------------------------------//
  // Widget myAppBar(BuildContext context, String title) {
  //   return AppBar(
  //     centerTitle: true,
  //     title: Text(
  //       title,
  //       style: Theme.of(context).textTheme.headline1,
  //     ),
  //     backgroundColor: Theme.of(context).primaryColor,
  //     bottom: getTabBar(),
  //   );
  // }
  // ---------------------------------APP BAR ENDS-------------------------------//

  // The problematic code
  // to get a tabBar for different screens
  getTabBar() {
    switch (currentIndex) {
      case 0:
        return journalTabBar();
        break;
      case 1:
        return todoTabBar();
        break;
      case 2:
        return moodTabBar();
        break;
      default:
    }
  }

  //------------------------Tab Bars--------------------------//

  todoTabBar() {
    return TabBar(
      controller: todoTabCon,
      tabs: <Widget>[
        Tab(child: Text('MasterList')),
        Tab(child: Text('DailyList')),
        Tab(child: Text('MonthlyList')),
      ],
    );
  }

  moodTabBar() {
    return TabBar(
      controller: moodTabCon,
      tabs: <Widget>[
        Tab(child: Text('Checker')),
        Tab(child: Text('Review')),
      ],
    );
  }

  journalTabBar() {
    return TabBar(
      controller: journalTabCon,
      tabs: <Widget>[
        Tab(child: Text('Journal')),
        Tab(child: Text('Entries List')),
      ],
    );
  }

  // ------------------------------Bottom BAR STARTS-------------------------------//

  myBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: primary,
      currentIndex: currentIndex,
      onTap: _onitemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('Journal')),
        BottomNavigationBarItem(
            icon: Icon(Icons.view_list), title: Text('Todos')),
        BottomNavigationBarItem(icon: Icon(Icons.mood), title: Text('Chart')),
      ],
    );
  }

  void _onitemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

//Body starts----------
  mainBody() {
    return _screens.elementAt(currentIndex);
  }
}