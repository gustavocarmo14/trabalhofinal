
import 'package:flutter/material.dart';
import 'package:my_booksheelf/View/home.dart';
import 'package:my_booksheelf/View/recursos/estilo.dart';

void main() => runApp(
  new MaterialApp(
    title: "My BookShelf",
    home: new Home(),
    debugShowCheckedModeBanner: false,

    theme: estilo()
  ),
);