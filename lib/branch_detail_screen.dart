import 'package:flutter/material.dart';
import 'branches.dart';

class BranchDetailScreen extends StatelessWidget {
  final Branches branch;

  const BranchDetailScreen({Key? key, required this.branch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          branch.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                branch.imgPath,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Details:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 1),
            Text(
              branch.additionalDetails,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 25),
            Text(
              "Contact Us:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text("Phone: 1804 080"),
            Text("Email: info@burgan.com"),
            Text("Website: https://www.burgan.com/"),
          ],
        ),
      ),
    );
  }
}
