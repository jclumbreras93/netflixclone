import 'package:flutter/material.dart';
import 'package:netflixclone/src/widgets/nav_bar_superior.dart';


class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network('https://estaticos.elperiodico.com/resources/jpg/6/8/elite-1536603380286.jpg', height: 350.0, fit: BoxFit.fill,),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color> [
                Colors.black26,
                Colors.black
              ]
            )
          ),
        ),
        NavBarSuperior()
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Telenovelesco', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text('Suspenso insostenible', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text('De suspense', style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text('Adolescente', style: TextStyle(color: Colors.white, fontSize: 10.0),),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 12.0),)
            ],
          ),
          FlatButton.icon(
            onPressed: () {}, 
            color: Colors.white,
            icon: Icon(Icons.play_arrow, color: Colors.black,), 
            label: Text('Reproducir')
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              Text('Información', style: TextStyle(color: Colors.white, fontSize: 12.0),)
            ],
          ),
        ],
      ),
    );
  }
}