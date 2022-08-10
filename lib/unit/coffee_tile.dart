import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
final String imagePath,nameOfCoffee,price;

  const CoffeeTile({Key key,@required this.imagePath,@required this.nameOfCoffee,@required this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                   imagePath,
                  height: 132,
                  width: 250,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameOfCoffee,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$'+price,style: TextStyle(fontSize: 20),),
                        Container(
                          padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange
                            ),
                            child: Icon(Icons.add)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
