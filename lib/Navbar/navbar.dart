import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>1200){
            return DesktopNavbar();
          } else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
            return DesktopNavbar();
          } else {
            return MobileNavbar();
          }
        }
    );
  }
}
class DesktopNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Test WEB", style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30
            ),),

            Row(
              children: <Widget>[
               Text("Home", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                Text("About", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                Text("Portfolio", style: TextStyle(color: Colors.white),),
                SizedBox(width: 30,),
                MaterialButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  onPressed: (){},
                  child: Text("Get Started", style: TextStyle(color: Colors.white),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
class MobileNavbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


