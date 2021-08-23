import 'package:flutter/material.dart';

ThemeData estilo(){
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.amber,
    colorScheme: ColorScheme.dark(),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black
    )
  );
}

/*decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(fundo),
                  fit: BoxFit.cover
                )
              ),*/