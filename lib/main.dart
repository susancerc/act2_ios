import 'package:flutter/material.dart';

void main() => runApp(FotoSusan());

class FotoSusan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "diseño widget susan",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity, 
      ), 
      home: PaginaInicio(),
    ); //fin del materialapp
  } //fin build fotosusan
} //fin fotosusan

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bordes en mi app"),
        centerTitle: true,
      ), 
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue[100],
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Susan Cervantes',
                    style: TextStyle(fontSize: 18),
                  ),
                ), //fin child center
              ), // fin del container
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/susancerc/mis_imagenes/main/182158728_285183366664506_5951827621813104394_n.png"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.yellow[200],
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.brown,
                        width: 5.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin de el container del texto 
            ], //fin del children
          ), //fin de la columna child
        ), //fin del bodycenter
      ), //finsinglechild
    ); //fin scaffold
  } //fin build widget pagina de inicio
} //fin clase pagina de inicio
