import 'package:flutter/material.dart';

class HomeBottomIconScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        bottom: _appBar(),
      ),
      body: _body(),
    );
  }

  _appBar() {
    return PreferredSize(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new IconButton(icon: Icon(Icons.photo_camera),iconSize: 25, onPressed: (){}),
            new Text("Instagram",style: TextStyle(fontFamily: "Billabong",fontSize: 30,color: Colors.black87),),
            new IconButton(icon: Icon(Icons.send),iconSize: 25, onPressed: (){}),
          ],
        ),
        preferredSize: null);
  }

  _floatPic(){
    return Container(
      height: 100,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return new Container(
                    margin: EdgeInsets.all(10),
                    child:new Column(
                      children: <Widget>[
                        new Container(
                          height: 60,
                          child: new Image.asset(
                            index==0
                                ?
                            "assets/images/your_acc.png"
                                :
                            "assets/images/friend_acc.png"
                          ),
                        ),
                        new Text(index==0 ? "you" : "friend $index")
                      ],
                    ) ,
                  );
            }),
          ),
          new Container(
            height: 0.5,
            color: Colors.grey[300],
          )

        ],
      ),
    );
  }

  _titleFriendAcc(index) {
    return Container(
      margin: EdgeInsets.all(8),
      child: new Row(
        children: <Widget>[
          new Image.asset("assets/images/friend_acc.png",height: 40,),
          new Padding(
            padding: EdgeInsets.only(left: 12),
            child: new Text("friend $index"),
          )

        ],
      ),
    );
  }

  _listImage(){
    return new Container(
      child: new Image.asset(
        "assets/images/images.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }

  _listBottom(){
    return new Container(
      margin: EdgeInsets.all(7),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
           children: <Widget>[
             new Icon(Icons.favorite_border,size: 30,),
             new Padding(
                 child: new Icon(Icons.receipt,size: 30,),
                 padding: EdgeInsets.only(left: 10,right: 10)

             ),
             new Icon(Icons.near_me,size: 30,),
           ],
          ),
          new Icon(
            Icons.bookmark_border,
            size: 30,
          )
        ],
      ),
    );
  }

  _listView(){
    return Container(
      child:new Expanded(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context,int index){
              return new Container(
                child:(index==0)
                ? _floatPic():
                    new Container(
                      height: 400,
                      child: new Column(
                        children: <Widget>[
                          _titleFriendAcc(index),
                          _listImage(),
                          _listBottom()
                        ],
                      ),
                    )
              );
        }),
      ),
    );
   }
  _body() {
    return new Container(
      child: new Column(
        children: <Widget>[
          _listView()
        ],
      ),
    );
  }


}