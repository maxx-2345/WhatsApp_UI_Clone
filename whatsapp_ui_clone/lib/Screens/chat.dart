import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name=["Sam","Sam","Sam","Sam","Sam","Sam","Sam","Sam"];
    List<String> message=["Hello","Hello","Hello","Hello","Hello","Hello","Hello","Hello"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.green),),
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
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){},
            leading: _profile(),
            title: Text(name[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            subtitle: Text(message[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: const Icon(Icons.chat,color: Colors.white,),
      ),
    );
  }

  Widget _profile(){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: Colors.grey.shade300,shape: BoxShape.circle),
      child: const Center(
        child: Icon(Icons.person,size: 40,),
      ),
    );
  }

}
