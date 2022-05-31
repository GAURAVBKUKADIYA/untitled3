import 'package:flutter/material.dart';
import 'package:untitled3/view/product/AddProduct.dart';
import 'package:untitled3/view/product/ViewProduct.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVMV"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text('AddProduct',textScaleFactor: 1.5,),
              trailing: Icon(Icons.production_quantity_limits),
              onTap: ()async{
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=>AddProduct())
                );
              },
            ),
            Divider(height: 5,thickness: 2,),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('ViewProduct',textScaleFactor: 1.5,),
              trailing: Icon(Icons.production_quantity_limits),
              onTap: ()async{
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> ViewProduct())
                );
              },
            ),
            Divider(height: 5,thickness: 2,),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('AddEmployed',textScaleFactor: 1.5,),
              trailing: Icon(Icons.person_add,color: Colors.blue,),
            ),
            Divider(height: 5,thickness: 2,),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('ViewEmployed',textScaleFactor: 1.5,),
              trailing: Icon(Icons.person,color: Colors.blue,),
            ),
            Divider(height: 5,thickness: 2,),

          ],
        ),
      ),
      body: ListView(
        children: [
          ExpansionTile(title: Text("product ",style: TextStyle(color: Colors.black),),
            children: [
              ListTile(
                tileColor: Colors.blue.shade100,
                leading: Icon(Icons.add,color: Colors.blue,),
                title: Text("AddProduct"),
                trailing: Icon(Icons.production_quantity_limits),
                onTap: (){

                },
              ),
              Divider(thickness: 2,color: Colors.red,),
              ListTile(
                tileColor: Colors.blue.shade100,
                leading: Icon(Icons.add,color: Colors.blue,),
                title: Text("ViewProduct"),
                trailing: Icon(Icons.production_quantity_limits),
                onTap: (){

                },
              ),
              Divider(thickness: 2,color: Colors.red,),

            ],
          ),
          ExpansionTile(
            title: Text("Employed",style: TextStyle(color: Colors.black),),
            children: [
              ListTile(
                tileColor: Colors.blue.shade100,
                leading: Icon(Icons.add,color: Colors.blue,),
                title: Text("AddEmployed"),
                trailing: Icon(Icons.production_quantity_limits),
                onTap: (){

                },
              ),
              Divider(thickness: 2,color: Colors.red,),
              ListTile(
                tileColor: Colors.blue.shade100,
                leading: Icon(Icons.add,color: Colors.blue,),
                title: Text("ViewProduct"),
                trailing: Icon(Icons.production_quantity_limits),
                onTap: (){

                },
              ),
              Divider(thickness: 2,color: Colors.red,),

            ],
          ),
        ],
      ),
    );
  }
}
