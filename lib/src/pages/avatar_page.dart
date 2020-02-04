import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as.com/meristation/imagenes/2018/11/12/noticia/1542053880_906934_1542962110_sumario_normal.jpeg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://img-cdn.hipertextual.com/files/2018/11/Stan-Lee.jpg?strip=all&lossy=1&quality=57&resize=740%2C490&ssl=1+'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}