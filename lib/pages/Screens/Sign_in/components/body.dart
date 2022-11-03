import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shoppingcart/pages/Screens/Sign_in/components/remember.dart';
import '../../../widgets/continue.dart';
import '../../../widgets/input.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
        width: MediaQuery.of(context).size.width,
        // color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text("Sign in with your email and password\nor continue with social media",
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
              const SizedBox(height: 30,),
              const Remember(),
              const SizedBox(height: 50),
              const CButton(),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GFIconButton(
                      onPressed: (){},
                      icon: Icon(Icons.account_box),
                      shape: GFIconButtonShape.pills,
                      color: Colors.grey,
                  ),
                  const SizedBox(width: 20,),
                  GFIconButton(
                      onPressed: (){},
                      icon: Icon(Icons.whatsapp_rounded),
                      shape: GFIconButtonShape.standard,
                      color: Colors.green,
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
      );
  }
}