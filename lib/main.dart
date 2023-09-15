import 'package:flutter/material.dart';
import 'package:hero_animation_1/onClick1.dart';
import 'package:hero_animation_1/product.dart';
import 'package:hero_animation_1/productListTile.dart';

void main() {
  runApp(const MyApp());
}

final List<Product> Products = [
  Product(
      title: 'Burger',
      Description: 'Burger Is tasty',
      price: 655.0,
      ImagePath: 'assets/images/burger.png'),
  Product(
      title: 'Macroni',
      Description: 'Tikka Macroni Is bestest In All',
      price: 460.50,
      ImagePath: 'assets/images/macroni.jpg'),
  Product(
      title: 'Pizza',
      Description: 'Ittalian Pizza',
      price: 1460.50,
      ImagePath: 'assets/images/pizza.jpg'),
  Product(
      title: 'Nuggests',
      Description: 'Everybody has a little nuggset',
      price: 250.50,
      ImagePath: 'assets/images/nuggsets.jpg'),
  Product(
      title: 'Wings',
      Description: 'Wings ',
      price: 460.50,
      ImagePath: 'assets/images/wings.jpg'),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: MyHomePage.pageName,
      // theme: ThemeData(
      //   primarySwatch: Colors.black,
      // ),
      theme:ThemeData.dark() ,
       home: const MyHomePage(title: 'PizzaValley'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  static const pageName = '/';
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Products.length,
            itemBuilder: ((context, index) => Hero(
                tag: Products[index].title,
                child: Material(
                  child: onClick1(
                     product: Products[index],
                      onClick: (() => Navigator.of(context).push(
                          PageRouteBuilder(
                              pageBuilder:
                                  ((context, animation, secondaryAnimation) =>
                                      productListTile(
                                        Products: Products[index],
                                      )),
                              transitionDuration: const Duration(milliseconds: 5),
                              reverseTransitionDuration:
                                  const Duration(milliseconds: 5)))),
                     ),
                )))),
      ),
    );
  }
}
