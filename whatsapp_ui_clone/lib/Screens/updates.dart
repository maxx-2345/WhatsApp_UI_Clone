import 'package:flutter/material.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),

          ],
        ),
      ),
    );
  }

  Widget _StatusProfile(){
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.all(2),
      ),
      child: Icon(Icons.person),
    );
  }

}
