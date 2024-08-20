import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   auth = FirebaseAuth.instanceFor(app: app);

  runApp(const MyApp());
  }
late final FirebaseAuth auth;
late final FirebaseApp app;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Custom color
  static const primaryColor = Color.fromARGB(255, 27, 42, 74);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Stoman',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'GeneralSans',
      ),
      home: const HomeScreen(),
    );
  }
}
