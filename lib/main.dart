import 'package:flutter/material.dart';
import 'package:keyper/widgets/gradient_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark, 
        seedColor: Color.fromARGB(255, 14, 165, 233)),
        useMaterial3: true,
      ),
      home: GradientScaffold(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi There!",style: TextStyle(fontSize: 30),),
              TextField(),
              TextField(),
              Container(
                height:50,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color.fromARGB(255, 14, 165, 233), Color.fromARGB(255,8,47,73)]),
                  borderRadius: BorderRadius.circular(22)
                ),
                child: FloatingActionButton(
                  onPressed: (){},
                  child:Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Register!"),
                  ),
                  backgroundColor: Colors.transparent,
                  ),
              )
            ],
          ),
      )
    );
  }
}

