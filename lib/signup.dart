import 'package:firebasedemo/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});



  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController fname= TextEditingController();
  TextEditingController lname= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  bool ischecked = false;

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
            Center(
              child: Text(
                'Create Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                InkWell(onTap: () {

                },
                  child: Container(
                    height: 50,width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('data:image/png;base64,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'),fit: BoxFit.fill)
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                InkWell(onTap: () {

                },
                  child: Container(
                      height: 45,width: 120,
                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCY1F-ghwOmLbvQMeGNo04luIvVigBTAbT0w&s'),fit: BoxFit.fill))
                  ),
                ),
              ],
            ),
            Text('OR',style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: fname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter Here...',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.person),
                  labelText: "First Name",labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              )),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: lname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter Here...',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Last Name",labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              )),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter Here...',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Email",labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              )),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter Here...',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(value: ischecked , onChanged: (bool? value) {
                  setState(() {
                    ischecked =value!;
                  });

                },),
                Text('I AGREE THE TERMS AND CONDITION',style: TextStyle(
                  color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),minimumSize: WidgetStatePropertyAll(Size(200,45))
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Account(),));

                }, child: Text("Create Account",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black87,fontStyle: FontStyle.italic,fontSize: 16
            ),)),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold
                ),),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Account(),));

                }, child: Text("Login",style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.blue
                ),))
              ],
            ),

          ],

        ),
      ),

    );
  }
}
