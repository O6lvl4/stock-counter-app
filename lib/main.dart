import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/templates/counter_template.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.indigo, secondaryHeaderColor: Colors.amber),
      darkTheme: ThemeData.dark().copyWith(
          primaryColor: Colors.indigoAccent,
          secondaryHeaderColor: Colors.amberAccent),
      home: const CounterTemplate(
        title: "STOCK COUNTER",
        stockCount: 0,
        limit: 20,
        itemPrice: 3300,
        taxRate: 0.065,
      ),
    );
  }
}
