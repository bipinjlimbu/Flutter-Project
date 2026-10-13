import 'package:flutter/material.dart';
import 'package:flutter_project/pages/signup_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SignUpPage(),
    );
  }
}
