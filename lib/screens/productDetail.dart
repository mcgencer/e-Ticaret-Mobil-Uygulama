
//Ürünlerin Detaylarının bulunduğu kodlar


import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> _ProductDetailState();

}

class _ProductDetailState extends State with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left,size: 40.0,color: Colors.black,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text("Ürün Detayı", style: TextStyle(color: Colors.black),),
      ),
      body: _buildProductDetails(context),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(height: 12.0,),
              _buildProductPrice(),
              SizedBox(height: 12.0,),
              _buildDivider(size),
              SizedBox(height: 12.0,),
              _buildFurtherInfo(),
              SizedBox(height: 12.0,),
              _buildDivider(size),
              SizedBox(height: 12.0,),
              _buildSizeArea(),
              SizedBox(height: 12.0,),
              _buildInfo(),

            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 4, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 4,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network("https://statics.altinyildizclassics.com/mnresize/900/1234/productimages/4A4921100515_CAG_2.jpg"),
                    Image.network("https://statics.altinyildizclassics.com/mnresize/900/1234/productimages/4A4921100515_CAG_3.jpg"),
                    Image.network("https://statics.altinyildizclassics.com/mnresize/900/1234/productimages/4A4921100515_CAG_4.jpg"),
                    Image.network("https://statics.altinyildizclassics.com/mnresize/900/1234/productimages/4A4921100515_CAG_5.jpg"),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5,1),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
    child: Center(
      child: Text("ALTINYILDIZ Bisiklet Yaka Triko Kazak",style: TextStyle(fontSize: 16.0,color: Colors.black),),
    ),
    );
  }
  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[

          Text(" 109,99 \₺", style: TextStyle(fontSize: 16.0,color: Colors.black)),
          SizedBox(width: 8.0),
          Text("\₺ 219,99 \₺", style: TextStyle(fontSize: 12.0,color: Colors.grey,decoration: TextDecoration.lineThrough)),
          SizedBox(width: 8.0),
          Text("\%  50 İndirim", style: TextStyle(fontSize: 12.0,color: Colors.blue)),

        ],
      ),
    );
  }

  _buildDivider(Size screenSize) {

    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: screenSize.width,
          height: 0.25,
        )
      ],
    );
  }

  _buildFurtherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_offer,color: Colors.black45),
          SizedBox(width: 12.0,),
          Text("Daha fazla bilgi için tıklayınız", style: TextStyle(color: Colors.black45))
        ],
      ),
    );
  }

  _buildSizeArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.straighten,color: Colors.black45,),
              SizedBox(width: 12.0),
              Text("Beden : L ", style: TextStyle(color: Colors.black45))
            ],
          ),
          Row(
            children: <Widget>[
              Text("Beden Tablosu", style: TextStyle(fontSize: 12.0,color: Colors.blue),)
            ],
          ),
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController=TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text("Ürün Bilgisi", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Yıkama Bilgisi", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 40.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text("%100 Akrilik", style: TextStyle(color: Colors.black)),
                Text("30 Derece Renkli Yıkama", style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

























