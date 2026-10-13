import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Project",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                "Create a new account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: TextEditingController(),
                icon: Icons.person,
                labelText: "Username",
                hintText: "Enter your username",
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: TextEditingController(),
                icon: Icons.email,
                labelText: "Email",
                hintText: "Enter your email",
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: TextEditingController(),
                icon: Icons.lock,
                labelText: "Password",
                hintText: "Enter your password",
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: TextEditingController(),
                icon: Icons.lock,
                labelText: "Confirm Password",
                hintText: "Re-enter your password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
