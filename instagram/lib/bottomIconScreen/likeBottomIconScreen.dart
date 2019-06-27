import 'package:flutter/material.dart';

class LikeBottomIconScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LikeBottomIconScreenState();
  }
}

class LikeBottomIconScreenState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    var _appBar = new Container(
      padding: EdgeInsets.only(top: 30),
      child: new TabBar(
        tabs: [
          new Tab(
            child: new Text(
              'Fallowing',
              style: new TextStyle(color: Colors.black),
            ),
          ),
          new Tab(
            child: new Text(
              'You',
              style: new TextStyle(color: Colors.black),
            ),
          )
        ],
        controller: _tabcontroller,
        indicatorColor: Colors.black,
      ),
    );
    // TODO: implement build
    return Scaffold(
      appBar: new PreferredSize(child: _appBar, preferredSize: Size.square(50)),
      body:  TabBarView(children: [
        new FallowingPage(),
        new YourPage()
      ],controller: _tabcontroller,),
    );
  }
}

class YourPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _body(),
    );
  }

  _body() {
    return  new Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset('assets/images/your_acc.png',height: 50,),
                  new Text('you start following friend ${index+1}'),
                  new OutlineButton(onPressed: (){
                    
                  },
                  child: new Text('following'),
                  )


                ],
              ),
            );
          }),
    );
  }
}

class FallowingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _body(),
    );
  }

  _body() {
    return  new Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset('assets/images/friend_acc.png',height: 50,),
                  new Text('friend ${index+1} liked your picture'),
                  new Image.asset('assets/images/images.jpeg',height: 50,),

                ],
              ),
            );
          }),
    );
  }
}
