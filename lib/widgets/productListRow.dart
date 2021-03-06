
import 'package:eticaret/utilities/constants.dart';
import 'package:flutter/material.dart';

class ProductListRow extends StatelessWidget{

  String name;
  double currentPrice;
  double originalPrice;
  int discount;
  String imageUrl;

  ProductListRow(
      {this.name,this.currentPrice,this.originalPrice,this.discount,this.imageUrl});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        _buildProductItemCard(context),
        _buildProductItemCard(context)
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(this.imageUrl),
              height: 250.0,
              width: MediaQuery.of(context).size.width/2.2,
            ),
            SizedBox(height: 8.0,),
            Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontSize: 16.0,color: Colors.black54, fontWeight: FontWeight.bold)),
                    SizedBox(height: 2.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(" $currentPrice \₺",style: TextStyle(fontSize: 16,color: Colors.black),),
                        SizedBox(width: 8.0,),
                        Text(" $originalPrice \₺",style: TextStyle(fontSize: 12,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                        SizedBox(width: 8.0,),
                        Text(" \%$discount ",style: TextStyle(fontSize: 12,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                        SizedBox(width: 8.0,),
                      ],
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
  
}




























