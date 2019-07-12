import 'package:flutter/material.dart';
import 'package:portfolio/src/models/producto_model.dart';



class ProductosProvider extends ChangeNotifier{

  List<ProductoModel> _productos = new List();

  ProductosProvider() {
    _cargarProductos();
  }

  List<ProductoModel> get productos => _productos;




  _cargarProductos() {

    final prod1 = new ProductoModel(
      nombre: 'https://nodejs.org/',
      titulo: 'NodeJS',
      subtitulo: 'Royal Blue',
      precio: 349.95,
      bateria: 45,
      color: 0xffffffff,
      colorIcon: 0xff68a063,
      favorito: false,
      icon: 'nodeJs',
      url: 'https://assets.materialup.com/uploads/3ffc58b2-1128-4b60-aae9-5238c8bf4af8/teaser.png'
    );

    final prod2 = new ProductoModel(
      nombre: 'https://angular.io/',
      titulo: 'Angular',
      subtitulo: 'Royal Red',
      precio: 300.95,
      bateria: 30,
      color: 0xffffffff,
      colorIcon: 0xffb52e31,
      favorito: true,
      icon: 'angular',
      url: 'https://angular.io/assets/images/logos/angular/angular.svg'
    );

    final prod3 = new ProductoModel(
      nombre: 'https://php.net',
      titulo: 'PHP',
      subtitulo: 'Space Grey',
      precio: 449.95,
      bateria: 50,
      color: 0xffffffff,
      colorIcon: 0xff8892be,
      favorito: false,
      icon: 'php',
      url: 'https://assets.materialup.com/uploads/3ffc58b2-1128-4b60-aae9-5238c8bf4af8/teaser.png'
    );

    final prod4 = new ProductoModel(
      nombre: 'https://www.java.com/',
      titulo: 'Java',
      subtitulo: 'Royal Gold',
      precio: 239.95,
      bateria: 25,
      color: 0xffffffff,
      colorIcon: 0xff5382a1,
      favorito: false,
      icon: 'java',
      url: 'https://assets.materialup.com/uploads/3ffc58b2-1128-4b60-aae9-5238c8bf4af8/teaser.png'
    );

    final prod5 = new ProductoModel(
      nombre: 'https://www.w3.org/html/',
      titulo: 'Html 5',
      subtitulo: 'Royal Red',
      precio: 349.95,
      bateria: 45,
      color: 0xf0ffffff,
      colorIcon: 0xfff16529,
      favorito: false,
      icon: 'html5',
      url: 'https://assets.materialup.com/uploads/3ffc58b2-1128-4b60-aae9-5238c8bf4af8/teaser.png'
    );

    final prod6 = new ProductoModel(
      nombre: 'https://www.w3.org/CSS/',
      titulo: 'CSS 3',
      subtitulo: 'Royal Teal',
      precio: 349.95,
      bateria: 45,
      color: 0xffffffff,
      colorIcon: 0xff2965f1,
      favorito: false,
      icon: 'css3',
      url: 'https://assets.materialup.com/uploads/3ffc58b2-1128-4b60-aae9-5238c8bf4af8/teaser.pngs'
    );

    this._productos.addAll([
      prod1,
      prod2,
      prod3,
      prod4,
      prod5,
      prod6,
    ]);
  }

}