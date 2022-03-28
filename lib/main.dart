import 'package:bytebank_ofc/model/contact.dart';
import 'package:bytebank_ofc/screens/contact_form.dart';
import 'package:bytebank_ofc/screens/contacts_list.dart';
import 'package:bytebank_ofc/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'database/app_database.dart';

void main() {
  runApp(const ByteBankApp());
  save(Contact(1, 'Alex', 1000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.blueAccent[700]),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: DashBoard(),
    );
  }
}

