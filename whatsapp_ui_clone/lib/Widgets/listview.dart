import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> name=["Sam","Sam","Sam","Sam","Sam","Sam","Sam",];
    List<String> time= ["Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM","Yesterday, 10:30 PM",];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context,index){

          return ListTile(
            leading: _profile(),
            title: Text(name[index],style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
            subtitle: Text(time[index],style: const TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
          );
        },
        itemCount: name.length,),
    );
  }

  Widget _profile(){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: Colors.grey.shade300,shape: BoxShape.circle),
      child: const Center(
        child: Icon(Icons.person,size: 35,),
      ),
    );
  }

}
