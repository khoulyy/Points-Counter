import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        // Team A title
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 28),
                        ),
                        // Zero
                        Text(
                          "$teamAPoints",
                          style: const TextStyle(fontSize: 150),
                        ),
                        // Button 1
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamAPoints++;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // Button 2
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamAPoints += 2;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(flex: 1),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamAPoints += 3;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: const VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        // Team A title
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 28),
                        ),
                        // Zero
                        Text(
                          "$teamBPoints",
                          style: const TextStyle(fontSize: 150),
                        ),
                        // Button 1
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamBPoints++;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        // Button 2
                        const Spacer(flex: 1),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamBPoints += 2;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(flex: 1),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            teamBPoints += 3;
                            setState(() {});
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
