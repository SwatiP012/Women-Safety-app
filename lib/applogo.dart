import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CommonLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/safe.png', width: 100,),
        "Women Safety".text.xl2.italic.make(),
        "Ensuring your safety, one tap at a time".text.light.white.wider.lg.make(),
      ],
    );
  }
}