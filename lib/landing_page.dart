import 'package:app_sobat/views/beranda.dart';
import 'package:app_sobat/views/gor_beranda.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 2;

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _bottomNavCurrentIndex = index;
    });
  }

  List<Widget> _container = [
    new BerandaPage(),
    new BerandaPage(),
    new BerandaPage(),
    new GorBeranda(),
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigationConvex(),
      ),
    );
  }

  // Widget _buildBottomNavigation() {
  //   return new BottomNavigationBar(
  //     type: BottomNavigationBarType.fixed,
  //     onTap: (index) {
  //       setState(() {
  //         _bottomNavCurrentIndex = index;
  //       });
  //     },
  //     currentIndex: _bottomNavCurrentIndex,
  //     items: [
  //       BottomNavigationBarItem(
  //         activeIcon: new Icon(
  //           Icons.home,
  //           color: Colors.lightBlueAccent[300],
  //         ),
  //         icon: new Icon(
  //           Icons.home,
  //           color: Colors.grey,
  //         ),
  //         title: new Text(
  //           'Beranda',
  //         ),
  //       ),
  //       BottomNavigationBarItem(
  //         activeIcon: new Icon(
  //           Icons.chat,
  //           color: Colors.lightBlueAccent[300],
  //         ),
  //         icon: new Icon(
  //           Icons.chat,
  //           color: Colors.grey,
  //         ),
  //         title: new Text('Diskusi'),
  //       ),
  //       BottomNavigationBarItem(
  //         activeIcon: new Icon(
  //           MdiIcons.badminton,
  //           color: Colors.lightBlueAccent[300],
  //         ),
  //         icon: new Icon(
  //           MdiIcons.badminton,
  //           color: Colors.grey,
  //         ),
  //         title: new Text('PB'),
  //       ),
  //       BottomNavigationBarItem(
  //         activeIcon: new Icon(
  //           MdiIcons.circleDouble,
  //           color: Colors.lightBlueAccent[300],
  //         ),
  //         icon: new Icon(
  //           MdiIcons.circleDouble,
  //           color: Colors.grey,
  //         ),
  //         title: new Text('Gor'),
  //       ),
  //       // BottomNavigationBarItem(
  //       //   activeIcon: new Icon(
  //       //     Icons.person,
  //       //     color: Colors.lightBlueAccent[300],
  //       //   ),
  //       //   icon: new Icon(
  //       //     Icons.person,
  //       //     color: Colors.grey,
  //       //   ),
  //       //   title: new Text('Akun'),
  //       // ),
  //     ],
  //   );
  // }

  // Widget _buildBottomNavigationCurved() {
  //   int _page = 0;
  //   GlobalKey _bottomNavigationKey = GlobalKey();

  //   return new CurvedNavigationBar(
  //     key: _bottomNavigationKey,
  //     // onTap: (index) {
  //     //   setState(() {
  //     //     _page  = index;
  //     //   });
  //     // },
  //     buttonBackgroundColor: Colors.white,
  //     backgroundColor: Colors.blue[800].withOpacity(0),
  //     animationCurve: Curves.easeInOutCirc,
  //     animationDuration: Duration(milliseconds: 600),
  //     height: 55.0,
  //     items: <Widget>[
  //       // Column(
  //       //   children: <Widget>[
  //       //     Icon(Icons.home, size: 30,),
  //       //     Text("Home")
  //       //   ],
  //       // ),
  //       // Column(
  //       //   children: <Widget>[
  //       //     Icon(Icons.chat, size: 30,),
  //       //     Text("Discussion")
  //       //   ],
  //       // ),

  //       Icon(Icons.home, size: 30),
  //       Icon(Icons.chat, size: 30),
  //       Icon(MdiIcons.badminton, size: 30),
  //       Icon(MdiIcons.circleDouble, size: 30),
  //     ],
  //   );
  // }

  Widget _buildBottomNavigationConvex() {
    return ConvexAppBar(
      items: [
        TabItem(
          icon: Icons.message,
          title: 'Discussion',
        ),
        TabItem(icon: MdiIcons.badminton, title: 'PB'),
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: MdiIcons.circleDouble, title: 'Gor'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      backgroundColor: Colors.white,
      initialActiveIndex: _bottomNavCurrentIndex, //optional, default as 0
      onTap: _onItemTapped,
      color: Colors.grey,
      activeColor: const Color(0xFF487af4),
    );
  }
}
