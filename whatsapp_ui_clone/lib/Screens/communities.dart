import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Communities", style: TextStyle(
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
            child: Icon(Icons.more_vert, color: Colors.black,),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.groups,color: Colors.white,size: 40,),
                ),
              ),
              const SizedBox(width: 10,),
              const Text("New community",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            ],
          ),
          const Divider(),
          Center(
            child: TextButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green)),
              onPressed: (){},
            child: const Text("Start your community",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            ),
          ),
        ],
      ),
    );
  }
}
