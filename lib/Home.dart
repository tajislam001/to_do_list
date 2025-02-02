import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("To Do List",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),

      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
          children: [
            TextField(decoration: InputDecoration(
          hintText: "Enter Your Task",
        border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
      ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text("Do to list"),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,)),
                      ),
                    );

                  }

                  
                ),
            ),
        ],
      ),

      ),

    );
  }
}