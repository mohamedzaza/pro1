import 'package:flutter/material.dart';

class Veiw extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image.asset('assets/logo.png'),SizedBox(height: 15,),Text('Login to your account',style: TextStyle(color:Colors.blue,fontSize: 22 ,fontWeight: FontWeight.bold),),
            SizedBox(height: 40),Padding(
              padding: const EdgeInsets.only(left: 17,right: 17),
              child: TextFormField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 22),suffixIcon: Icon(Icons.email),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
            )




          ]




        )

      ),
    );
  }
}

