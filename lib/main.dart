import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  MyApp createState()  =>  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic Login screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Welcome to Login",
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
              fontWeight: FontWeight.bold
            ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                  child: Column(
                    children: [

                      /** Email field*/
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Your Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder()
                          ),

                          onChanged: (String email){

                          },
                          validator: (email){
                            return email!.isEmpty? 'Please Enter Email' : null;
                          },
                        ),
                      ),

                      SizedBox(height: 30),

                      /** Password field*/
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder()
                          ),
                          onChanged: (String password){

                          },
                          validator: (password){
                          return password!.isEmpty ? 'Please enter password' : null;
                        },
                        ),
                      ),

                      SizedBox(height: 30),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: (){},
                        child: Text("Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),),
                        color: Colors.pink,
                        textColor: Colors.white,
                        ),
                      )
                    ],
              )),
            ),
          ]
          ,
        ),
      ),
    );
  }
}
