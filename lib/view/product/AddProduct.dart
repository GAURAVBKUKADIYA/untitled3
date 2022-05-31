import 'package:flutter/material.dart';
import 'package:untitled3/resources/StyleResources.dart';
import 'package:untitled3/widgets/MyPrimaryButton.dart';

class AddProduct extends StatefulWidget {


  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {


  Widget _addclick()
  {
    return
      MyPrimaryButton(

        onclick: ()async{

        },
      );

  }

  Widget _addproductform()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name",style:StyleResources.primaryTextStyle,),
        SizedBox(height: 10,),
        TextField(
          decoration: StyleResources.primaryTexyFeldDecoration,
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 10,),
        Text("Quantity",style:StyleResources.primaryTextStyle,),
        SizedBox(height: 10,),
        TextField(
          decoration: StyleResources.primaryTexyFeldDecoration,
          keyboardType: TextInputType.text,
        ),
        SizedBox(height: 10,),
        Text("Price",style:StyleResources.primaryTextStyle,),
        SizedBox(height: 10,),
        TextField(
          decoration: StyleResources.primaryTexyFeldDecoration,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AddProduct"),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(

            children: [
              _addproductform(),
              SizedBox(height: 20,),
              _addclick(),
            ],
          ),
        ),
      ),
    );
  }
}
 