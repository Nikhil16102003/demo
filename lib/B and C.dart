import 'package:flutter/material.dart';

import 'homepage.dart';

class Brakeclutch extends StatefulWidget {
   Brakeclutch({super.key});
  List image =[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  List tit=[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  List sub =[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  State<Brakeclutch> createState() => _BrakeclutchState();
}

class _BrakeclutchState extends State<Brakeclutch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Spare Mart',
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
            },
            icon: Icon(Icons.close),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black87,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1d0vLalIVnj5lGNGz-fsJwa-FArLt3kUd_Q&s'),fit: BoxFit.fill)
              ),
              
            ),
            Text("Brake Disc Caliper",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),),
            Divider(
              thickness: 1 ,
              color: Colors.teal,
            ),
            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
                itemBuilder: (context, index) => ListTile(
                  leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(''),fit: BoxFit.fill)
                    ),
                  ),
                  title: Text('data'),
                  subtitle: Text('data'),
                ),
            shrinkWrap: true,
            itemCount: 15,)
          ],
        ),
      ),

    );
  }
}
