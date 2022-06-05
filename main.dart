import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldIslemler(title: 'Form Islemleri'),
    );
  }
}

class TextFieldIslemler extends StatelessWidget {
  final String title;
  const TextFieldIslemler({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Islemleri',)),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            autofocus: true,
            maxLines: 1,
            maxLength: 20,
            onChanged: (String deger) {
              if (deger.length > 3) {
                print(" suvmit " + deger);
              }
            },
            cursorColor: Colors.pink,
            decoration: InputDecoration(
              labelText: 'Label Text',
              hintText: 'Email gir',
              // icon: Icon(Icons.add),
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.access_alarms_outlined),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
            onSubmitted: (String deger) {
              print(deger);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
