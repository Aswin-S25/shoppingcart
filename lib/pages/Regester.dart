// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/widgets/continue.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shoppingcart/pages/widgets/input.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
        width: MediaQuery.of(context).size.width,
        // color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const Text(
                "Register Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text("Complete your details or continue\nwith social media",
                  style: TextStyle(color: Colors.grey, height: 1.5),
                  textAlign: TextAlign.center),
              const SizedBox(height: 30),
              const Inputfield(
                  hint: "Enter your email",
                  label: "Email",
                  icon: Icons.email_outlined),
              const SizedBox(height: 30),
              const Inputfield(
                  hint: "Enter your Password",
                  label: "Password",
                  icon: Icons.lock_outline),
              const SizedBox(height: 30),
              const Inputfield(
                  hint: "Re-enter your Password",
                  label: "Confirm Password",
                  icon: Icons.lock_outline),
              const SizedBox(height: 50),
              const CButton(),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GFIconButton(
                      onPressed: (){},
                      icon: Icon(Icons.gite),
                      shape: GFIconButtonShape.pills,
                      color: Colors.red,
                  ),
                  const SizedBox(width: 20,),
                  GFIconButton(
                      onPressed: (){},
                      icon: Icon(Icons.whatsapp_rounded),
                      shape: GFIconButtonShape.standard,
                  ),
                  const SizedBox(width: 20,),
                  GFIconButton(
                      onPressed: (){},
                      icon: Icon(Icons.facebook),
                      shape: GFIconButtonShape.pills,

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
