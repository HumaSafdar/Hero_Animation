import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_animation_1/product.dart';

class onClick1 extends ListTile {
  onClick1({required this.onClick, required this.product, super.key})
      : super(
            onTap: onClick,
            leading: CircleAvatar(
              backgroundImage: AssetImage(product.ImagePath),
            ),
            title: Text(
              product.title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              product.Description,
              style: TextStyle(fontSize: 12),
            ),
            trailing: Text(
              product.price.toString(),
              style: TextStyle(fontSize: 12),
            ));

  final Product product;
  GestureTapCallback onClick;
}
