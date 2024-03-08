// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_function_declarations_over_variables

import 'package:flutter/material.dart';

class MyContador extends StatefulWidget {
  const MyContador({super.key});

  @override
  State<MyContador> createState() => _MyContadorState();
}

class _MyContadorState extends State<MyContador> {
  final icone = SizedBox(
  height: 200,
  width: 200,
    child: Image.asset('assest/image/contadora.jpg'),
  );

  int cont =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120,),
            icone,
            Text("Contador usando Stateful Widget"),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed:() {
                  setState(() {
                    
                  });
                  cont-=1;
                  },
                  child: Text("-"),
                ),
                SizedBox(width: 15),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 255, 175, 155)),
                  child: Center(
                    child: Text('$cont'),
                    )
                    ),
                SizedBox(width: 10,),
                 FloatingActionButton(onPressed:() {
                  setState(() {
                    
                  });
                  cont+=1;
                  },
                  child: Text("+"),
                  )
              ],
            ),
            Text("Valor do contador:$cont")
          ],
        ),
      ),
    );
  }
}