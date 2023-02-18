import 'package:flutter/material.dart';
import 'package:splash_screen/mathGame/level.dart';
import 'package:splash_screen/mathGame/quizGame/selectClass.dart';

class ChooseGameType extends StatefulWidget {
  const ChooseGameType({super.key});

  @override
  State<ChooseGameType> createState() => _ChooseGameTypeState();
}

class _ChooseGameTypeState extends State<ChooseGameType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 40, 40),
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.center,
                child: const Text(
                  'Select Your game',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Level(gameType: 'plus')),
                          );
                        },
                        child: Image.asset(
                          'assets/images/plus.png',
                          height: 200,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Level(gameType: 'multiplication')),
                          );
                        },
                        child: Image.asset(
                          'assets/images/multiplication.png',
                          height: 200,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Level(gameType: 'minus')),
                          );
                        },
                        child: Image.asset(
                          'assets/images/minus.png',
                          height: 200,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Level(gameType: 'division')),
                          );
                        },
                        child: Image.asset(
                          'assets/images/division.png',
                          height: 200,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectClass(
                            user: 'admin',
                          )),
                );
              },
              child: const Text(
                'Admin',
                style: TextStyle(fontSize: 40, color: Colors.pink),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectClass(
                            user: 'user',
                          )),
                );
              },
              child: const Text(
                'User',
                style: TextStyle(fontSize: 40, color: Colors.pink),
              ),
            )
          ],
        ),
      ),
    );
  }
}
