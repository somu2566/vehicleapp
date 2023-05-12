import 'package:flutter/material.dart';
import 'package:vehicleapp/Login_screen.dart';
import 'package:vehicleapp/Otp_screen.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState(){
    countrycode.text="+91";
        super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/taxi.gif",width: 150, height: 150,),
              SizedBox(
                height: 25,
              ),


              Text('Phone Verification',
            style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,
            ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        readOnly: true,
                        controller: countrycode,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),

                    ),
                    SizedBox(width: 10,),
                    Text("|", style: TextStyle(
                        fontSize: 33, color: Colors.grey

                    ),),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none, hintText: "Phone"),
                        keyboardType: TextInputType.phone,


                      ),


                    ),


                  ],
                ),

              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 43,
                width: double.infinity,

                child: ElevatedButton(onPressed: () {
                  //Navigator.pushNamed(context, "otp");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otppage()),
                  );

                }, child: Text('Send OTP'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

                ),

              ),
          SizedBox(
            height: 10,
          ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        // Handle onPressed event for first text here
                      },
                      child: Text(
                        'Already Have An Account ?',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ],

              ),

            ],
          ),
        ),

      ),
    );
  }
}
