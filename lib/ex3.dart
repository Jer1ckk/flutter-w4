import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            CustomCard(title: "OOP", color: Colors.blue[100]!),
            SizedBox(height: 20),
            CustomCard(
              title: "OOP2",
              gradient: LinearGradient(
                colors: [Colors.blue[100]!, Colors.blue[600]!],
              ),
            ),
            CustomCard(title: "Dart", color: const Color(0xFFFFE8A3)),
            CustomCard(
              title: "FLUTTER",
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 241, 223, 168), Colors.amber],
              ),
            ),
            CustomCard(title: 'title')
          ],
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String title;
  final Color? color;
  final Gradient? gradient;

  const CustomCard({super.key, required this.title, this.color = Colors.blue, this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        
        gradient: gradient,
        color: gradient == null ? color : null,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
