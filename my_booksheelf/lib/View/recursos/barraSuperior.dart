import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar{

  BarraSuperior() : super(
    automaticallyImplyLeading: false,
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context){
        return IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
          onPressed: () => Scaffold.of(context).openDrawer()
        );
      }
    ),
    title: FaIcon(
      FontAwesomeIcons.bookOpen,
      size: 50,     
      color: Colors.black,
    ),
    elevation: 12.0,
    
    //iconTheme: IconThemeData(color: Colors.orange.shade400)
  );
}