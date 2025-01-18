import 'package:flutter/material.dart';

void main() {
  runApp(const pointCounter());
}

// ignore: camel_case_types, must_be_immutable
class pointCounter extends StatefulWidget {
  const pointCounter({super.key});
  @override
  State<pointCounter> createState() => _pointCounterState();
}

// ignore: camel_case_types
class _pointCounterState extends State<pointCounter> {
  int teamApoint = 0;
  int teamBpoint = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("point Counter"),
          ),
          body: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "$teamApoint",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //?const Spacer(flex: 1),// 20cm space
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //? const Spacer(flex: 1),//? 20cm space
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //*const Spacer(flex: 5),
                    ],
                  ),
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "$teamBpoint",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      ///? const Spacer(flex: 1),//? 20cm space
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      ///? const Spacer(flex: 1),//? 20cm space
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //* const Spacer(flex: 5),
                    ],
                  )
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamApoint = 0;
                    teamBpoint = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
            ],
          )),
    );
  }
}
