import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/Regester.dart';
import 'package:shoppingcart/pages/welcome.dart';

class CButton extends StatelessWidget {
  const CButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
        },
        child: const Text(
          "Continue",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
