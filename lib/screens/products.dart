import 'dart:async';

import 'package:flutter/material.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/product_item.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
        title: "Products",
        centerTitle: true,
        leadingIcon: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  buildStatus(),
                  buildProducts(),
                  buildPurchasedConsumables(),
                  buildRestorePurchasesBtn()
                ],
              ),
            ),
          )
      ),
    );
  }

  buildLoading(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          title: Text(
              "Trying to connect..."
          ),
        ),
        ListTile(
          leading: Center(
            child: SizedBox(
                width: getProportionateScreenWidth(22),
                height: getProportionateScreenWidth(22),
                child: const CircularProgressIndicator(color: primaryColor)
            ),
          ),
          title: const Text(
              "Fetching products..."
          ),
        ),
        ListTile(
          leading: Center(
            child: SizedBox(
                width: getProportionateScreenWidth(22),
                height: getProportionateScreenWidth(22),
                child: const CircularProgressIndicator(color: primaryColor)
            ),
          ),
          title: const Text(
              "Fetching consumables..."
          ),
        ),
      ],
    );
  }

  buildStatus(){
    return const Card(
      color: Color.fromARGB(255, 21, 21, 21),
      child: ListTile(
        leading: Icon(
          Icons.done,
          color: greenColor,
        ),
        title: Text(
          "The store is available",
          style: TextStyle(
            color: white,
            // fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }

  buildProducts(){
    return Card(
      color: Color.fromARGB(255, 21, 21, 21),
      child: Column(
        children: [
          const ListTile(
            title: Text(
              "Products for Sale",
              style: TextStyle(
                color: white
              ),
            ),
          ),
          const Divider(
            color: white,
          ),
          ProductItem(
              productTitle: "Token 30001 Ark",
              productDescription: "Token in app purchase",
              productPrice: "30,001",
              onPress: (){

              }
          ),
          ProductItem(
              productTitle: "Ark Token 20000",
              productDescription: "Token 20000 in app product",
              productPrice: "20,000",
              onPress: (){

              }
          ),
          ProductItem(
              productTitle: "Discounted Movie Ark Token",
              productDescription: "Less features of gold but works like gold",
              productPrice: "18,000",
              onPress: (){

              }
          ),
          ProductItem(
              productTitle: "Token 2 USD Ark",
              productDescription: "Token 2 USD Ark",
              productPrice: "200",
              onPress: (){

              }
          ),
          ProductItem(
              productTitle: "Token 3000 Movie Ark",
              productDescription: "3000 token in app product",
              productPrice: "3,000",
              onPress: (){

              }
          ),
          ProductItem(
              productTitle: "Ark token",
              productDescription: "Movie ark token",
              productPrice: "28,000",
              onPress: (){

              }
          ),
        ],
      ),
    );
  }

  buildPurchasedConsumables(){
    return Card(
      color: const Color.fromARGB(255, 21, 21, 21),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            ListTile(
              title: Text(
                "Purchased Consumables",
                style: TextStyle(
                  color: white
                ),
              ),
            ),
            Divider(color: white),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  buildRestorePurchasesBtn(){
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
          child: const Text(
              "Restore Purchases"
          ),
          style: TextButton.styleFrom(
              primary: textColor,
              backgroundColor: greenColor
          ),
          onPressed: (){}
      ),
    );
  }
}
