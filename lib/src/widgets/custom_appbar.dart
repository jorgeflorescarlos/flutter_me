import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          //IconButton( icon: Icon( FontAwesomeIcons.arrowLeft ), onPressed: () {} ),
          SizedBox( width: size.width * 0.01 ),
          Text('Jorge Flores Carlos', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),),

          Spacer(),

          //IconButton( icon: Icon( FontAwesomeIcons.search ), onPressed: () {} ),

          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              width: size.width * 0.15,
              height: 50.0,
              color: Colors.blue,
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.user, color: Colors.white,),
                  onPressed: null),
            ),
          ),

          SizedBox( width: 5.0 )

        ],
      ),
    );
  }
}
