import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/basic_widgets/datepicker_widget.dart';
import 'package:flutter_fundamental_1/basic_widgets/dialog_widget.dart';
import 'package:flutter_fundamental_1/basic_widgets/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLayout(),
    );
  }
}

class MyLayout extends StatefulWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            MyDialogWidget(),
            MyTextField(),
            MyDatePicker(),
          ],
        ),
      ),
    );
  }
}
