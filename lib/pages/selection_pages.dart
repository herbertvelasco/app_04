import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  //DateTime date = DateTime(2022,12,24);

  selectedDate() {
  DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2030));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Data Picker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
              ),
              onTap: () async {
                selectedDate();
                if(newDate == null) return;
                setState(() => date = newDate );
              },
            ),
            Center(child: Text('${date.year} / ${date.month} / ${date.day}',
            style: TextStyle(fontSize: 32) ,
            ),),
          ],
        ),
      ),
    );
  }
}
