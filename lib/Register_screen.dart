import 'package:flutter/material.dart';
import 'package:vehicleapp/home_screen.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name:',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 1.0, color: Colors.grey),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter name',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Email:',
                style: TextStyle(fontSize: 16.0),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 1.0, color: Colors.grey),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 43,
                width: double.infinity,

                child: ElevatedButton(onPressed: () {
                  //Navigator.pushNamed(context, "otp");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }, child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}



