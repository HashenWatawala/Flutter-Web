import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context,constraints){
      if(constraints.maxWidth > 800){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        )
      } else {
        return MobileNavbar();
      }
    }
    );,
    );
  }
}
