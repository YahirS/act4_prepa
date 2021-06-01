import 'package:flutter/material.dart';

void main() => runApp(MyICIApp());

class MyICIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preparatoria ICI',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    ); //Fin MaterialApp
  } //Fin de widget
} //fin de MyICIApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() {
    return _PaginaInicioState();
  }
} //Fin Statefulwidget

class _PaginaInicioState extends State<PaginaInicio> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preparatoria ICI'),
        backgroundColor: Colors.black,
      ), //fin de App Bar

      body: Padding(
        padding: const EdgeInsets.all(1.5), //pading del body espacio blanco

        child: Container(
          //contenedor gris
          color: Colors.blue[200],
          height: 2000,
          width: 2000,
          padding: const EdgeInsets.all(10), //pading del body espacio blanco

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 170,
                width: 282,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/YahirS/Foto-familia/main/PREPA-ICI-logo-600x463.png'), alignment: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.red,
                    width: 3.0,
                  ), //fin de border
                ), //fin de el decoration box
              ), //fin de el container

              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Matricula',
                     
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    
                    labelText: 'Nombre completo',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0,
                        
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Curp',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          //! Change the Focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('Cafeteria'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Biblioteca'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Salones'),
                          value: 'three',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Horarios'),
                          value: 'four',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Maestros'),
                          value: 'five',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Selecciona'),
                      value: _value,
                    ), //fin de dropdown
                    
                  ], //fin de widget
                ), //fin de row
              ), //fin de container
              
              SizedBox(height: 5),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.amber,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Iniciar",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.amber,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Cancelar",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget2[]
          ), //fin de column
        ), //child container
      ), //fin de body padding
    ); //Fin Scaffold
  } //Fin de Widget
} //Fin _PaginaInicioState
