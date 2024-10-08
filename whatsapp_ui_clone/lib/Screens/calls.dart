import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../Widgets/listview.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> name= ["Sam","Sam","Sam","Sam","Sam","Sam","Sam"];
    List<String> time = ["Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM"];
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Calls", style: TextStyle(
            fontSize: 24, color: Colors.black),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.qr_code, color: Colors.black,),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.more_vert, color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const SizedBox(height: 20,),
              const Text("Favourites",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
              const SizedBox(height: 15,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,color: Colors.white,)
                        ),
                    ),
                    const SizedBox(width: 10,),
                    const Text("Add favourites",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              const Text("Recent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              const SizedBox(height: 15,),
              // const ListViewWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: const Icon(Icons.add_ic_call_rounded,color: Colors.white,),
      ),
    );
  }


}
