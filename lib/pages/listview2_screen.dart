import 'package:flutter/material.dart';


class ListView2Screen extends StatelessWidget {
   
  final options = const['Megaman', 'Superman', 'Acquaman', 'Batman', 'Strange'];

  const ListView2Screen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.indigo,
        title: const Text('List View  2 Screen'),
      ),
      body: ListView.separated(
        itemCount: options.length,

        itemBuilder: (cont, i) =>  ListTile(
          trailing: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 204, 0, 68),),
          title: Text(options[i]),
          onTap: ()=>{
            
            print(options[i])
          },
          
        ),

        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
} 


 