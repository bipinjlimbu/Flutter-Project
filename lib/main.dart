import 'package:flutter/material.dart';
import 'package:flutter_project/pages/signup_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_project/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://bgaflhfufqtlglhzzkhr.supabase.co',
    publishableKey: 'sb_publishable_wCDG7c-c8bb6542Zt38dww_jGOGKy0j',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Supabase.instance.client.auth.currentUser == null
          ? const SignUpPage()
          : const HomePage(),
    );
  }
}
