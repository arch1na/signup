import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool passwordObscrued = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( child:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png'),
            fit: BoxFit.fill,
          )
        ),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height *0.5,
        right: 35,left: 35),
        child: Column(
        children: [
          Align(alignment: Alignment.topCenter),
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF7A5600)),
              ),
              fillColor: Color(0xFFF2DFB2),
              filled: true,
              hintText: ' Username',
              hintStyle: TextStyle(
              color: Color(0xFF7A5600),
                fontFamily:'AbhayaLibre',
            ),
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF7A5600)),
              ),
              fillColor: Color(0xFFF2DFB2),
              filled: true,
              hintText: 'Email', hintStyle: TextStyle(
              color: Color(0xFF7A5600),
              fontFamily:'AbhayaLibre',
            ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: passwordObscrued,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF7A5600)),
              ),
              fillColor: Color(0xFFF2DFB2),
              filled: true,
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordObscrued = !passwordObscrued;
                  });
                },
                icon: Icon(Icons.visibility_off),
              ),
              hintStyle: TextStyle(
              color: Color(0xFF7A5600),
              fontFamily:'AbhayaLibre',
            ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: passwordObscrued,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF7A5600)),
              ),
              fillColor: Color(0xFFF2DFB2),
              filled: true,
              hintText: 'Confirm password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordObscrued = !passwordObscrued;
                  });
                },
                icon: Icon(Icons.visibility_off),
              ),hintStyle: TextStyle(
              color: Color(0xFF7A5600),
              fontFamily:'AbhayaLibre',
            ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20),
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xff7A5600),),
                   onPressed: (){} ,child: Text('Sign up',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily:'Inter', fontSize: 20),),),
          ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("Already have an account?", style: TextStyle(
                   color: Colors.white,
                   fontFamily: 'AbhayaLibre',
                   fontSize: 15,
                   letterSpacing: 1,
                 ),),
                   TextButton(onPressed:(){}, child: Text('Login', style: TextStyle(
                     color: Color(0xff604401),
                     fontFamily: 'Karla', fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),))
    ],
    ),
        ]
          ),
          ),
      ),

      );

  }
  }
  
  


