import 'package:flutter/material.dart';

class Veiw extends StatefulWidget {
  @override
  State<Veiw> createState() => _VeiwState();
}

class _VeiwState extends State<Veiw> {
  bool isPasswordHidden=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Image.asset('assets/logo.png'),
          SizedBox(height: 15,),Text('Login to your account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue),),SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 17,right: 17),
              child: TextFormField(decoration: InputDecoration(hintText: 'Email',prefixIcon: Icon(Icons.email),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
            ),SizedBox(height: 35),Padding(
              padding: const EdgeInsets.only(right: 17,left: 17),
              child: TextFormField(obscureText: isPasswordHidden,decoration: InputDecoration(hintText: 'Password',prefixIcon: Icon(Icons.lock), suffixIcon: IconButton(onPressed: (){setState(() {
                isPasswordHidden=!isPasswordHidden;
              }); }, icon:Icon(isPasswordHidden?Icons.visibility_off:Icons.visibility) ),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
            ),SizedBox(height: 20,),Row(mainAxisAlignment: MainAxisAlignment.end,children: [Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('Forget Password ?',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
            )],),SizedBox(height: 10,),GestureDetector(onTap: (){print('ok');},
              child: Container(width: 350,height: 55,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Text('Login',textAlign:TextAlign.center ,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white)),
              ),),
            ),SizedBox(height: 14,),Text('or login with',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 22),),SizedBox(height: 14,),Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Container(height: 45,width: 50,child: Image.asset('assets/faxe.png'),decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.white,borderRadius: BorderRadius.circular(20)),),SizedBox(width: 5,),Container(height: 45,width: 50,child: Image.asset('assets/google.png'),decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.white,borderRadius: BorderRadius.circular(20))),SizedBox(width: 5,),Container(height: 45,width: 50,child: Image.asset('assets/twiter.png'),decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.white,borderRadius: BorderRadius.circular(20))),],),
            SizedBox(height: 32,),Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text('if you have an account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),SizedBox(width: 5,),IconButton(onPressed: (){}, icon:   Text('Register',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 8),))],)
            
          ],),
        )),

    );
  }
}


