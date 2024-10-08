import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: const Text("Updates", style: TextStyle(
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
      body: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _mystatus(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                    _StatusProfile(),
                    const SizedBox(width: 10,),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 20,),
              const Text("Channels",style: TextStyle(fontWeight: FontWeight.bold,fontSize:19 ),),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _Channels(),
                    const SizedBox(width: 15,),
                    _Channels(),
                    const SizedBox(width: 15,),
                    _Channels(),
                    const SizedBox(width: 15,),
                    _Channels(),
                    const SizedBox(width: 15,),
                    _Channels(),
                    const SizedBox(width: 15,),

                  ],
                ),
              ),
            const SizedBox(height: 15,),
            TextButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green)),
                onPressed: (){},
                child: const Text("Explore more",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
    );
  }

  Widget _mystatus(){
    return Container(
      height: 60,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,shape: BoxShape.circle),
        child: Stack(
          children: [
            const Center(child:  Icon(Icons.person,color: Colors.black,size: 40,)),
            Positioned(
                height: 24,
                width: 24,
                bottom: -2,
                right: 0,
                child:Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2,color: Colors.white),
                  ),
                  child: const Center(child: Icon(Icons.add,color: Colors.white,size: 22,)),
                ) ,
            ),
          ],
        ),
    );
  }

  Widget _StatusProfile(){
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
       border: Border.all(width: 2,color: Colors.greenAccent.shade400),
          color: Colors.grey.shade300,shape: BoxShape.circle),
      child: const Center(
        child: Icon(Icons.person,size: 40,),
      ),
    );
  }

  Widget _Channels(){
    return  Container(
      width: 130,
      height: 160,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.grey),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _StatusProfile(),
          const SizedBox(height: 5,),
          const Text("Star Sports India",style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 5,),
          TextButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green.shade200)),
              onPressed: (){},
              child: Text("Follow",style: TextStyle(color: Colors.green.shade900,fontWeight: FontWeight.bold),)),

        ],
      ),
    );
  }

}
