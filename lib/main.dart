import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';


import './widgets/chart.dart';
import './models/transaction.dart';
import './screens/all_expenses_screen.dart';
import './widgets/new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXPENSAPP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Quicksand',
      ),
      home: LandingPage(),
    );
  }
}

