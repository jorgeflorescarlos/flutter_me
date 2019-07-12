import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:portfolio/src/providers/productos_provider.dart';
import 'package:portfolio/src/models/producto_model.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CardsView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final productosProv = Provider.of<ProductosProvider>(context);


    return Container(
      width: double.infinity,
      height: 260.0,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: PageController(viewportFraction: 0.75),
        // children: <Widget>[
        //   _Card(),
        //   _Card(),
        // ],
        children: productosProv.productos.map( (prod) => _Card( prod ) ).toList()
      )
    );
  }
  

}

class _Card extends StatelessWidget {

  ProductoModel prod;

  _Card( this.prod );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Map<String, IconData> iconMapping = {
      'angular' : FontAwesomeIcons.angular,
      'nodeJs' : FontAwesomeIcons.nodeJs,
      'php' : FontAwesomeIcons.php,
      'java' : FontAwesomeIcons.java,
      'html5' : FontAwesomeIcons.html5,
      'css3' : FontAwesomeIcons.css3
    };
    return Container(
      child: Stack(
        children: <Widget>[

          Row(
            children: <Widget>[
              SizedBox(width: 05.0),
              _TarjetaDescripcion( prod )
            ]
          ),


          Positioned(
            top: 10,
            left: 15,
            child: Icon(
              iconMapping [prod.icon],
              color: Color( prod.colorIcon ),
              size: size.height * 0.25,
            ),
          )


        ],
      ),
    );
  }



}

class _PrimeraDescripcion extends StatelessWidget{
  
  ProductoModel prod;

  _PrimeraDescripcion( this.prod );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon( FontAwesomeIcons.batteryFull, size: 15 ),
            SizedBox(width: 10.0),
            Text('${ prod.bateria }-Hour Battery', style: TextStyle(fontSize: 12.0)),

            SizedBox( width: 30.0, ),

            Icon( FontAwesomeIcons.wifi, size: 15 ),
            SizedBox(width: 10.0),
            Text('Wireless', style: TextStyle(fontSize: 12.0)),

          ],
        ),
      ),
    );
  }


}


class _TarjetaDescripcion extends StatelessWidget {

  ProductoModel prod;

  _TarjetaDescripcion( this.prod );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * 0.66,
          height: 260.0,
          color: Color( prod.color ),
          child: Column(
            children: <Widget>[

              SizedBox( height: 25.0 ),

              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text( prod.titulo , style: TextStyle( color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold )),
                    SizedBox(height: 5.0,)
                    //Text( prod.subtitulo, style: TextStyle( color: Colors.white24, fontSize: 30, fontWeight: FontWeight.bold )),
                  ],
                ),
              ),

              Spacer(),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text( prod.nombre, style: TextStyle( color: Colors.black)),
                    Spacer(),
                    Icon( FontAwesomeIcons.heart, color: Colors.black )
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

}