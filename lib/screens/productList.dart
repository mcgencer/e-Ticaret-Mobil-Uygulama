
// Ürün Listelerinin olduğu dosya

import 'package:eticaret/widgets/productListRow.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget{
  var pRow = ProductListRow();

  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Product List",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildProductListPage(
        
      ),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context,index){
          if(index==0){
            return _buildFilterWidgets(screenSize);
          }else if(index==3){
            return SizedBox(height: 12.0,);
          }else {
            return _buildProductListRow();
          }

        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_down,color: Colors.black),
          SizedBox(width: 2.0,),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Kazak", currentPrice: 109.99 , originalPrice: 219.99 ,discount:50,imageUrl:"https://statics.altinyildizclassics.com/mnresize/380/521/productimages/4A4921100515_CAG_1.jpg");

  }
}





























