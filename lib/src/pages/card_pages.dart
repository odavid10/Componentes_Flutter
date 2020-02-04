import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero poner aqui con tener una idea lo que quiero mostrar'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );

  }

  Widget _cardTipo2(){

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2018/03/09/articles/2017_8/landscape_photography.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje')
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

  }
}