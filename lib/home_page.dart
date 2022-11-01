import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //declaramos variables
  double peso = 70.0;
  double altura = 160.0;
  double imc = 0;
//funcion para hacer un calculo
  calculadora_imc() {
    imc = peso / pow((altura / 100), 2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //parte superior incluye titulo
      appBar: AppBar(
        backgroundColor: Color(0xFF001d3d),
        title: Text(
          'IMC App',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //cuerpo del proyecto
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        //utilizaremos column para el disenno
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenido, seleccione su peso y talla',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF001d3d).withOpacity(0.8),
              ),
            ),
            //espacio entr objetos
            const SizedBox(
              height: 10.0,
            ),
            //dentro de column incrustaremos el row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  peso.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 38.0,
                    //fontWeight: FontWeight.w400,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14.0,
                    //fontWeight: FontWeight.w400,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
              ],
            ),
            Slider(
              value: peso,
              min: 20,
              max: 200,
              // activeColor: Colors.amber,
              //inactiveColor: Colors.red,
              //thumbColor: Colors.blue,
              onChanged: (double value) {
                peso = value;
                setState(() {});
              },
            ),
            //sizebox agrega un espacio entre objetos
            const SizedBox(
              height: 10.0,
            ),
            //un row para poner la altura y los cm
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  altura.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 28.0,
                    //fontWeight: FontWeight.w400,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14.0,
                    //fontWeight: FontWeight.w400,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
              ],
            ),
            //inserta un objeto deslizante con el que ingresamos la altura
            Slider(
              value: altura,
              min: 100,
              max: 220,
              // activeColor: Colors.amber,
              //inactiveColor: Colors.red,
              //thumbColor: Colors.blue,
              onChanged: (double value) {
                altura = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF001d3d).withOpacity(0.8),
                ),
                onPressed: () {
                  calculadora_imc();
                },
                icon: Icon(Icons.play_arrow),
                label: Text(
                  'Calcular',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //anadimos una linea sutil segun el diseno
            Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Resultado",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w100,
                color: Color(0xFF001d3d).withOpacity(0.8),
              ),
            ),
            //agregamos una imagen q estara centrado
            Center(
              child: Image.asset(
                'assets/images/img1.png',
                height: 180,
                width: 180,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //un column para mostrar texto
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  //imc.toString(),
                  imc.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFf72585).withOpacity(0.8),
                  ),
                ),
                Text(
                  "Sobrepeso",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
                Text(
                  "Debes de Comer mas sano y realizar mas actividad fisica",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100,
                    color: Color(0xFF001d3d).withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
