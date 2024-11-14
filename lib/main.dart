import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tinder", 
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/2020-03-19_Entrevista_concedida_ao_apresentador_Ratinho_do_SBT_21_%28cropped%29.jpg/1200px-2020-03-19_Entrevista_concedida_ao_apresentador_Ratinho_do_SBT_21_%28cropped%29.jpg', fit: BoxFit.cover,)
            ),
            Positioned(
              bottom: 30,
              left: 10,
              child: Column(
                children: [
                  Text('Ratinho - 52'),
                  Text('Apresentador, tarado'),
                  Text('RAPAZZZZZZ (le-se na voz do ratinho)')
                ],
              ),
            )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.close),),
          SizedBox(width: 10,),
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.favorite),),
        ],
      ),
    );
  }
}