import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.menu),
              Text('Cucumber Market'),
              Icon(Icons.people),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ItemData(price: 10000),
              ItemData(price: 500),
              ItemData(price: 9990),
              ItemData(price: 48750),
              ItemData(price: 666970),
              ItemData(price: 100),
              ItemData(price: 10),
              ItemData(price: 5000),
              ItemData(price: 8900),
              ItemData(price: 3000),
              ItemData(price: 37000),
            ],
          ),
        ) 
      )
    );
  }
}

class ItemData extends StatelessWidget {
  int price ;
  ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Image(
          width: 100,
          height: 100,
          image: AssetImage('images/cucumber.png'),
          ),
          const SizedBox(width: 50,),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('신선한 오이무침 팝니다.',
                style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                ),
                const Text('경기도 성남시.',
                  style:TextStyle(color: Colors.black54),
                ),
                Text('$price원.'),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                Icon(Icons.favorite_border, color: Colors.blue,),
                Text('18'),
                SizedBox(width: 20,)
              ],
              ),
              ],
            ),
          )
        ],
    );
  }
}