import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
  List<Widget>pageChildren(){
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Website \nDevelopers",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("We have taken each and every project hundred over to us as a challange, which has helped us achieve a",
                style: TextStyle(
                  fontSize: 16.0, color: Colors.white
                ),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
      Image.asset("Assets/images/image.png",
      width: 400,
      height: 400,)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context,constraints){
      if(constraints.maxWidth > 800){
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(),
        );
      } else {
        return Column(
          children: pageChildren(),
        );
      }
    }
    ),
    );
  }
}
