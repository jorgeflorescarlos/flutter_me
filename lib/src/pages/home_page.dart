import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio/src/widgets/fondo_circular.dart';
import 'package:portfolio/src/widgets/custom_appbar.dart';
import 'package:portfolio/src/widgets/cards_view.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            FondoCircular(),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    _Header(),
                    CardsView(),
                    _Header2(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Widget not implemented yet', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),),
                          Text('Preview:', style: TextStyle(fontStyle: FontStyle.italic),),
                        ],
                      ),
                    ),
                    Container(
                      child:
                      Column(
                        children: <Widget>[
                          ListTile(
                            title: Text('Año/Empresa/Puesto'),
                            subtitle: Text('Descripción'),
                            selected: true,
                          ),
                          ListTile(
                            title: Text('Año/Empresa/Puesto'),
                            subtitle: Text('Descripción'),
                          ),
                          ListTile(
                            title: Text('Año/Empresa/Puesto'),
                            subtitle: Text('Descripción'),
                          ),
                        ],
                      )

                    )
                  ],
                ),
              ),
            ),

            BuyButton()
          ],
        )
    );
  }
}


class _Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox( height: 5.0 ),
          Text('My Skills', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30.0 )),

        ],
      ),
    );
  }
}


class BuyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Contact Me', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0 )),
                SizedBox( width: 2.0),
                Icon( FontAwesomeIcons.arrowRight, color: Colors.white, size: 12.0, ),
                SizedBox( width: 5.0),
              ],
            ),
            width: size.width * 0.32,
            height: 45.0,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only( topLeft: Radius.circular(50.0))
            ),
          ),
        )
      ],
    );
  }
}

class _Header2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox( height: 5.0 ),
          Text('My Experience', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30.0 )),

        ],
      ),
    );
  }
}
