import 'package:flutter/material.dart';

void main() {
  double estimatedBill = 0.0;

  void computeConsumption(int watts, int hours) {
    estimatedBill = (watts / 1000) * hours * 30 * 15;
    print(estimatedBill);
  }

  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("Energy Consumption Calculator"),
      centerTitle: true,
    ),
    body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              maxLines: 1,
              style: const TextStyle(color: Colors.black, fontSize: 24),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                prefixIcon: Icon(
                  Icons.electric_bolt,
                  color: Colors.black.withOpacity(0.5),
                  size: 50,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 24),
                hintText: "Watts",
                fillColor: Colors.white30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLines: 1,
              style: const TextStyle(color: Colors.black, fontSize: 24),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                prefixIcon: Icon(
                  Icons.hourglass_bottom,
                  color: Colors.black.withOpacity(0.5),
                  size: 50,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 24),
                hintText: "No. of hours",
                fillColor: Colors.white30,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  computeConsumption(500, 8);
                },
                child: const Text("Compute",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold))),
            Text(estimatedBill.toString())
          ],
        ),
      ),
    ),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      backgroundColor: Colors.yellow,
    ),
  )));
}
