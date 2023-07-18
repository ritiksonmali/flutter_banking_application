import 'package:banking_application/Logs/Loggers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // if (ResponsiveLayout.isMobileLayout(context)) {
    //   // Mobile layout
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Mobile Layout'),
    //     ),
    //     body: const Center(
    //       child: Text('Mobile Content'),
    //     ),
    //   );
    // } else if (ResponsiveLayout.isTabletLayout(context)) {
    //   // Tablet layout
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Tablet Layout'),
    //     ),
    //     body: const Center(
    //       child: Text('Tablet Content'),
    //     ),
    //   );
    // } else {
    //   // Website layout
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Website Layout'),
    //     ),
    //     body: const Center(
    //       child: Text('Website Content'),
    //     ),
    //   );
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () async {
                await Loggers.printLog(HomeScreen, "INFO", "Hello Message");
                await Loggers.printLog(HomeScreen, "ERROR", "Error Message");
                await Loggers.printLog(
                    HomeScreen, "WARNING", "Warning Message");
                await Loggers.printLog(HomeScreen, "DEBUG", "Debug Message");
              },
              child: const Text(
                'print log',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
