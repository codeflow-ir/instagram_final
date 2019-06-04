import 'package:flutter/material.dart';
import 'package:instagram/bottomIconScreen/accountBottomIconScreen.dart';
import 'package:instagram/bottomIconScreen/homeBottomIconScreen.dart';
import 'package:instagram/bottomIconScreen/likeBottomIconScreen.dart';
import 'package:instagram/bottomIconScreen/plusBottomIconScreen.dart';
import 'package:instagram/bottomIconScreen/searchBottomIconScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
   int _currentTab=0;
   var _currentPage;
   List page;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentPage=new HomeBottomIconScreen();
    page =[
      HomeBottomIconScreen(),
      SearchBottomIconScreen(),
      PlusBottomIconScreen(),
      LikeBottomIconScreen(),
      AccountBottomIconScreen(),
    ];

  }
  @override
  Widget build(BuildContext context) {
    var _textStyle=TextStyle(fontSize: 0);
    var _bottomItems = new BottomNavigationBar(
       currentIndex: _currentTab,
        onTap: (int index){
         setState(() {
           _currentTab=index;
           _currentPage=page[index];
         });
        },
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
      new BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text("",style: _textStyle,),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black87,
          )),
      new BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          title: new Text("",style: _textStyle,),
          activeIcon: Icon(
            Icons.search,
            color: Colors.black87,
          )),
      new BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            color: Colors.grey,
          ),
          title: new Text("",style: _textStyle,),
          activeIcon: Icon(
            Icons.add_box,
            color: Colors.black87,
          )),
      new BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          title: new Text("",style: _textStyle,),
          activeIcon: Icon(
            Icons.favorite,
            color: Colors.black87,
          )),
      new BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: new Text("",style: _textStyle,),
          activeIcon: Icon(
            Icons.account_circle,
            color: Colors.black87,
          )),
    ]);
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: _bottomItems,
      body: _currentPage,
    );
  }
}
