import 'package:flutter/material.dart';
import 'detail.dart';
import 'groceries.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Barang"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataBarang = groceryList;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataBarang[index], context);
      },
      itemCount: dataBarang.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Groceries data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(name: data.name, description: data.description, price: data.price, stock : data.stock, discount : data.discount, storeName : data.storeName, pruductUrl : data.productUrl, productImageUrls : data.productImageUrls, reviewAverage : data.reviewAverage);
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(data.productImageUrls),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.name, style: TextStyle(fontWeight: FontWeight.bold),)),

              ),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text("Harga : " + data.price)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}