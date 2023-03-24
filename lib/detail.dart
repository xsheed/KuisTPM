import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'groceries.dart';


class DetailPage extends StatelessWidget {

  final String name;
  final String description;
  final String price;
  final String stock;
  final String discount;
  final String storeName;
  final String productUrl;
  final List<String> productImageUrls;
  final String reviewAverage;


  const DetailPage({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.discount,
    required this.storeName,
    required this.productUrl,
    required this.productImageUrls,
    required this.reviewAverage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 16),
              Image.network(productImageUrls, height: 300),
              SizedBox(height: 16),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text("Desc : " + description, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Nama Toko : " + storeName, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Stok : " + stock, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Diskon : " + discount, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Rata-rata Review : " + reviewAverage, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text(price, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}