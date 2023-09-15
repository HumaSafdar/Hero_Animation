import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hero_animation_1/product.dart';

class productListTile extends StatelessWidget {
  const productListTile({
    required this.Products,
    key,
  }) : super(key: key);
  final Product Products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List Page'),
      ),
      body: Column(
        
        children: [
          const SizedBox(
            height: 20,
          ),
          Hero(
              tag: Products.title,
              // placeholderBuilder: (context, heroSize, child) => Opacity(
              //       opacity: 1,
              //       child: SizedBox(
              //         width: heroSize.width,
              //         height: heroSize.height,
              //       ),
              //     ),
              // flightShuttleBuilder: (flightContext, animation, flightDirection,
              //     fromHeroContext, toHeroContext) {
              //   Hero toHeroWidget = toHeroContext.widget as Hero;
              //   Hero fromHeroWidget = toHeroContext.widget as Hero;

              //   return RotationTransition(
              //     turns: animation,
              //     child: FadeTransition(
              //       opacity: animation,
              //       child: fromHeroWidget.child,
              //     ),
              //   );
          //    },
              child: Expanded(flex: 3, child: Image.asset(Products.ImagePath))),
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 16,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          Products.title,
                          style:const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 16,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          Products.Description,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 16,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          Products.price.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
