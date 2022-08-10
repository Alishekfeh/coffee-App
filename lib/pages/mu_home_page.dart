import 'package:coffeeapp/unit/coffee_tile.dart';
import 'package:coffeeapp/unit/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List coffeeType = [
    ['cappuccino', true],
    ['latte', false],
    ['black', false],
    ['tea', false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Expanded(
                child: Text('Find the best coffee for you',
                    style: GoogleFonts.bebasNeue(fontSize: 64)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'find your coffee',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[600]),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[600]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context, index) {
                    return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        coffeeTypeSelected(index);
                      },
                    );
                  }),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  imagePath: 'images/coffee.jpg',
                  nameOfCoffee: 'late',
                  price: '6',
                ),
                CoffeeTile(
                  imagePath: 'images/coffees.jpg',
                  nameOfCoffee: 'cappuccino',
                  price: '3',
                ),
                CoffeeTile(
                  imagePath: 'images/coffeess.jpg',
                  nameOfCoffee: 'black',
                  price: '2',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
