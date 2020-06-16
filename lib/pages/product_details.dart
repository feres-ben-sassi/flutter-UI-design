import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_dtails_name ;
  final product_dtails_new_price ;
  final product_dtails_old_price ;
  final product_dtails_picture  ;

  const ProductDetails(
      {

        this.product_dtails_name,
        this.product_dtails_new_price,
        this.product_dtails_old_price,
        this.product_dtails_picture
      }
  ) ;


//test

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text('Aftercode'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color : Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color : Colors.white), onPressed: (){})        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container (
            height: 300.0,
            color: Colors.black,
            child: GridTile(
                child: new Container(
                    color: Colors.white,
                    child: Image.asset(widget.product_dtails_picture),
                ),
              footer : new Container (
                color : Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_dtails_name ,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_dtails_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text("\$${widget.product_dtails_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color : Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed:(){},
                  color:Colors.white ,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],

                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(onPressed:(){},
                  color:Colors.white ,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],

                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed:(){},
                  color:Colors.white ,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qte"),
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],

                  ),
                ),
              ),


            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed:(){},
                    color:Colors.black ,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.black, onPressed:(){}  ),
              new IconButton(icon: Icon(Icons.favorite),color: Colors.black, onPressed:(){}  ),
            ],
          )
        ],
      ),
    );
  }
}
