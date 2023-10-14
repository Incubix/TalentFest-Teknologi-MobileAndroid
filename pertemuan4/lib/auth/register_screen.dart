import 'package:flutter/material.dart';
import 'package:pertemuan4/auth/login_screen.dart';
import 'package:pertemuan4/widget/button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buat Akun",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign up",
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Nama :"), hintText: "Contoh : Puspita"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("email :"),
                    hintText: "Contoh : Puspita@gmail.com"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("No Hp:"), hintText: "Contoh : 0812345678"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    label: Text("password :"), hintText: "masukan password"),
              ),
              ButtonWidget(title: "Register")
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sudah punya akun? "),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Login"))
            ],
          )),
    );
  }
}
