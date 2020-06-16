import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// my own imports
import 'package:ecommerce_app/componets/horizontal_listview.dart';
import 'package:ecommerce_app/componets/products.dart';

void main (){
  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
      home: HomePage()
  )
  );
  
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.00,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),

      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.black,
      indicatorBgPadding: 2.0,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('Aftercode'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color : Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color : Colors.white), onPressed: (){})        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
                accountName: Text('Feres Ben Sassi'),
                accountEmail: Text('feresbensassi5@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor:Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                )
              ),
              decoration: new BoxDecoration(
                color: Colors.black
              ) ,
            ),

              //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page '),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account '),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders '),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help , color : Colors.blue),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          // image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text ('Categories')
          ),
          //horizontale list view begin here
            HorizontalList(),
          new Padding(padding: const EdgeInsets.all(16.0),
              child: new Text ('Recent products')
          ),
          // GridView
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),

    );
  }
}

