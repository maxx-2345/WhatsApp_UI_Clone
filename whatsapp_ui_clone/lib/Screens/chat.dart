import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          ListTile(
            splashColor: Colors.grey,
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading:_profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
          ListTile(
            leading: _profile(),
            title: Text("Sam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text("Hello"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: const Icon(Icons.chat,color: Colors.black,),
      ),
    );
  }

  Widget _profile(){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: Colors.grey.shade300,shape: BoxShape.circle),
      child: Center(
        child: Icon(Icons.person,size: 40,),
      ),
    );
  }

}
