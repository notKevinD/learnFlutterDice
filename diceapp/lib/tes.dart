import 'package:flutter/material.dart';

class Tes extends StatelessWidget {
  const Tes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 207, 0, 10),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World!', style: TextStyle(color: Colors.white, fontSize: 28.5),),
      ),
    );
  }
}
