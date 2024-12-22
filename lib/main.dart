import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        useMaterial3: true,
        fontFamily: 'Suwannaphum-Regular',
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: const Text(
          'My First Project',
          style: TextStyle(
            fontFamily: 'Suwannaphum-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ImageItem(
                    image: NetworkImage("https://picsum.photos/200"),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: ImageItem(
                    image: AssetImage("assets/images/asset_image.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 46),
            Text(
              'The two images are displayed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Suwannaphum-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.deepOrange[900],
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1.3, 1.3),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.image,
  });

  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          image is NetworkImage ? 'Network Image' : 'Asset Image',
          style: TextStyle(
            fontFamily: 'Suwannaphum-Regular',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.deepPurple[300],
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(1.2, 1.2),
                blurRadius: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
