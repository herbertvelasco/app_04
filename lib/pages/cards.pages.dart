import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Carts Page"),
      ),
      body: Column(
        children: [
          ///////////// containere 1
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white38.withOpacity(0.3),
                  offset: Offset(-4, -4),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas Letraset, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.",
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  width: double.infinity,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    "Follow me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //////////// container 2
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white38.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/analisis.png",
                  height: 120.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Fiorella Guadalupe de las nieves",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        textAlign: TextAlign.center,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  //overflow: TextOverflow.ellipsis,
                  //maxLines: 4,
                ),
              ],
            ),
          ),
          /////////// container 3
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Colors.white38.withOpacity(0.3),
                  offset: Offset(4, 4),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popular.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        "https://images.pexels.com/photos/1058771/pexels-photo-1058771.jpeg",
                        height: 120.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
