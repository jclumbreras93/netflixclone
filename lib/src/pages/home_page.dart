import 'package:flutter/material.dart';
import 'package:netflixcloneGit/src/widgets/cartel_principal.dart';
import 'package:netflixcloneGit/src/widgets/item_img.dart';
import 'package:netflixcloneGit/src/widgets/item_redondo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          listaHorizontal('Avances', ItemRedondo(), 15),
          SizedBox(height: 10.0,),
          listaHorizontal('Tendencias', ItemImg(), 15),
          SizedBox(height: 10.0,),
          listaHorizontal('Series sobre ciencia', ItemImg(), 15),
          SizedBox(height: 10.0,),
          listaHorizontal('Mi lista', ItemImg(), 15),
          SizedBox(height: 10.0,),
          listaHorizontal('Lo que sea', ItemImg(), 15),
          SizedBox(height: 20.0,),
        ],
      ),
      bottomNavigationBar: navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    TextStyle estilo = new TextStyle(fontSize: 12.0);
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio', style: estilo,)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar', style: estilo,)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('Proximamente', style: estilo,)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text('Descargas', style: estilo,)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Más', style: estilo,)
        ),
      ],

    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo, 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0 ,
              fontFamily: 'Rock Salt'
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}