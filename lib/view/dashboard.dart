import 'package:first_app/view/arithmetic_view.dart';
import 'package:first_app/view/circle_area_view.dart';
import 'package:first_app/view/simple_interest_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArithmeticView()),
                );
              },
              child: const Text('Arithmetic View'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CircleAreaView()),
                );
              },
              child: const Text('Circle Area View'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimpleInterestView()),
                );
              },
              child: const Text('Simple Interest View'),
            ),
          ],
        ),
      ),
    );
  }
}
