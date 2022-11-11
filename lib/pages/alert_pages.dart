import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({super.key});

  showMyAlert(BuildContext context1) {
    showDialog(
      context: context1,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("AlertDialog Example!!"),
          backgroundColor: Colors.grey,
          content: Text("Este es un ejemplo de AlertDialog. Texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                //Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert1(BuildContext context2) {
    showDialog(
      context: context2,
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text("AlertDialog Example!!"),
          backgroundColor: Colors.white,
          //content: Text("Este es un ejemplo de AlertDialog. Texto de prueba"),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ventana.png"),
                ),
                Text(
                  "Blog post published",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                    "This blog post haas been published. Team members will be able to edit this post and republish changes."),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Confirm"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context3) {
    showDialog(
      context: context3,
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text("AlertDialog Example!!"),
          backgroundColor: Colors.white,
          //content: Text("Este es un ejemplo de AlertDialog. Texto de prueba"),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 150.0,
                  child: Image.asset(
                    "assets/images/persona-2.jpg",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Your Video has been uploaded",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "You're video has finished uploading and is live",
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("untitle.com/total/promo"),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("(-) Copy Link"),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("skip"),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Next"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showMyAlert(context);
            },
            child: Text("Alert"),
          ),
          SizedBox(height: 5.0),
          ElevatedButton(
            onPressed: () {
              showMyAlert1(context);
            },
            child: Text("Alert1"),
          ),
          SizedBox(height: 5.0),
          ElevatedButton(
            onPressed: () {
              showMyAlert2(context);
            },
            child: Text("Alert2"),
          ),
        ],
      ),
    );
  }
}
