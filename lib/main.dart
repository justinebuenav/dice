import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: const Text(
            '1V1 DICE GAME',
            style: TextStyle(
                fontFamily: 'RobotoMono'
            ),

          ),
          backgroundColor: Colors.green[600],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right = 1, comp = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            Expanded(child:Center(
              child: Text(
                  'PLAYER 1',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 25.0,
                      color: Colors.white
                  )
              ),
            )),
            Expanded(child:Center(
              child: Text(
                  'PLAYER 2',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 25.0,
                      color: Colors.white
                  )
              ),
            ))
          ],
        ),
        Center(
          child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                          lrandomizer();
                        });
                      },
                      onLongPress: (){
                        setState((){
                          resetter();
                        });
                      },
                      child: Image.asset('images/dice$left.png')),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                          rrandomizer();
                        });
                      },
                      onLongPress: (){
                        setState((){
                          resetter();
                        });
                      },
                      child: Image.asset('images/dice$right.png')),
                ))
              ]
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Long Press to Reset back to 1',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 20.0,
                      color: Colors.white
                  )
              ),
            )
          ],
        ),
      ],
    );
  }

  void lrandomizer(){
    left=1+Random().nextInt(6);
  }
  void rrandomizer(){
    right=1+Random().nextInt(6);
  }
  void resetter(){
    left=1;
    right=1;
  }

}
