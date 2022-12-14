import 'package:app_04/pages/selection_pages.dart';
import 'package:app_04/pages/tarea_pages.dart';
import 'package:app_04/pages/lists_pages.dart';
import 'package:app_04/pages/inputs_pages.dart';
import 'package:app_04/pages/cards_pages.dart';
import 'package:app_04/pages/alert_pages.dart';
import 'package:app_04/pages/avatar_pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'tarea.pages.dart';
//import 'alert.pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                //color: Colors.red,
                height: 150, //altura
                width: 120, //largo
                decoration: BoxDecoration(
                  //color: Colors.white38,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    ),
                  ],
                  //borderRadius: BorderRadius.only(
                  //bottomLeft: Radius.circular(60.0),
                  //topRight: Radius.circular(60.0),
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/12446364/pexels-photo-12446364.jpeg"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                //style:TextStyle(
                //fontSize: 20.0,
                //),
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  letterSpacing: 1,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200,
                child: Divider(),
              ),
              SizedBox(
                height: 10.0,
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                toPage: CardsPage(),
              ),
              ItemComponentWidget(
                title: "Input",
                toPage: InputPage(),
              ),
              ItemComponentWidget(
                title: "Tarea",
                toPage: TareaPage(),
              ),
              ItemComponentWidget(
                title: "Lists",
                toPage: ListPage(),
              ),
              ItemComponentWidget(
                title: "Selection",
                toPage: SelectionPage(),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle del $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
