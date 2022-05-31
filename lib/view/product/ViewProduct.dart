import 'package:flutter/material.dart';

class ViewProduct extends StatefulWidget {


  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ViewProduct"),),
      ),
    );
  }
}
