import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:image_compressor/image_crop.dart';
import 'image_compresse.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image is awesome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => const ImageCompressorPage(),
                  ),
                );
              },
              color: Colors.blue,
              duration: 5,
              height: 50,
              width: 200,
              shadowDegree: ShadowDegree.dark,
              child: const Text(
                "Image Compressor",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => const ImageCropPage(),
                  ),
                );
              },
              color: Colors.blue,
              duration: 5,
              height: 50,
              width: 200,
              shadowDegree: ShadowDegree.dark,
              child: const Text(
                "Image Crop",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
