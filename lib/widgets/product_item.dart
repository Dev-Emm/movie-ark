import 'package:flutter/material.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';

class ProductItem extends StatefulWidget {
  final String productTitle;
  final String productDescription;
  final String productPrice;
  final VoidCallback onPress;
  const ProductItem({Key? key, required this.productTitle, required this.productDescription, required this.productPrice, required this.onPress}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.productTitle,
        style: const TextStyle(
          color: white
        ),
      ),
      subtitle: Text(
        widget.productDescription,
        style: const TextStyle(
          color: white
        ),
      ),
      trailing: TextButton(
        child: Text(
          "Ksh " + widget.productPrice,
          style: const TextStyle(
            color: white
          ),
        ),
        style: TextButton.styleFrom(
          primary: white,
          backgroundColor: primaryColor
        ),
        onPressed: widget.onPress,
      ),
    );
  }
}
