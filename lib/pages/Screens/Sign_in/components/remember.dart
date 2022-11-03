import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool? data = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: data,
            onChanged: ((value) {
              setState(() {
                data = value;
              });
            })),

        Text("Remember me", style: TextStyle(color: Colors.grey),),

        Spacer(),
        GestureDetector(
          child:const Text(
            "Forgot Password",
            style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
