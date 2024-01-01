import 'package:app_finance/data/model/add_date.dart';
import 'package:app_finance/screens/home.dart';
import 'package:app_finance/screens/statistics.dart';
import 'package:app_finance/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}