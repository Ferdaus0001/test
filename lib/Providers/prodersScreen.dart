import 'package:ferdaus/Providers/provider_Contoloer/Count_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Prodersscreen extends StatefulWidget {
  const Prodersscreen({super.key});

  @override
  State<Prodersscreen> createState() => _ProdersscreenState();
}

class _ProdersscreenState extends State<Prodersscreen> {

  @override
  Widget build(BuildContext context) {
    final countprovidr = Provider.of<CountProvider>(context);

    return  Scaffold(
      appBar: AppBar(
        title: Text('Provider '),
        elevation: 4,
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('0',style: TextStyle(fontSize: 72,fontWeight: FontWeight.bold,color: Colors.blue),),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovidr.Setcount();
      },
          child: Icon(Icons.add),
        shape: CircleBorder(),

      ),
    );
  }
}
