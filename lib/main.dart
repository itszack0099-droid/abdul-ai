import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'services/background_service.dart';
import 'services/overlay_service.dart';

@pragma("vm:entry-point")
void overlayMain() {
  runApp(const OverlayBubble());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeBackgroundService();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Color(0xFF050A18),
  ));
  runApp(const AbdulAIApp());
}

class AbdulAIApp extends StatelessWidget {
  const AbdulAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdul AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF050A18),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00B4D8),
          secondary: Color(0xFF0077B6),
          surface: Color(0xFF0A1628),
          background: Color(0xFF050A18),
        ),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
