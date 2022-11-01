import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.purple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/8686319/pexels-photo-8686319.jpeg"),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Image.network(
            //  "https://images.pexels.com/photos/8686319/pexels-photo-8686319.jpeg"),
            //Image.asset("assets/images/loading.gif"),
            FadeInImage(
              placeholder: AssetImage("assets/images/loading.gif"),
              image: NetworkImage(
                  "https://images.pexels.com/photos/8686319/pexels-photo-8686319.jpeg"),
              height: 300,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 1300),
            ),
          ],
        ),
      ),
    );
  }
}
