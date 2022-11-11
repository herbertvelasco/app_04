import 'package:flutter/material.dart';

class TareaPage extends StatelessWidget {
  const TareaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 161, 187),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("tarea Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          //////  1
          Container(
            width: 450,
            height: 80,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Ceo at Apple Inc",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 150.0,
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.settings_outlined),
                      Text("Settings"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ////////  2
          Container(
            width: 450.0,
            height: 100.0,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1194786/pexels-photo-1194786.jpeg",
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "The quick, brown fox jumps over",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impres desconocido usó una galería de textos y los mezcló",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //////   3
          Container(
            width: 450.0,
            height: 110.0,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit met, consetetur",
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Text(
                      "On",
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.toggle_on_outlined,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.70,
                  color: Colors.black38,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit met, consetetur",
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Text(
                      "Off",
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.toggle_off_sharp,
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
