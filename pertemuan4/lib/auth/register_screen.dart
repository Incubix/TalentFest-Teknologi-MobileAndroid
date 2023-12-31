import 'package:flutter/material.dart';
import 'package:pertemuan4/auth/login_screen.dart';
import 'package:pertemuan4/widget/button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final namaEcd = TextEditingController();
  final emailEcd = TextEditingController();
  final noHpEcd = TextEditingController();
  final passEcd = TextEditingController();

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
                controller: namaEcd,
                decoration: const InputDecoration(
                    label: Text("Nama :"), hintText: "Contoh : Puspita"),
              ),
              TextFormField(
                controller: emailEcd,
                decoration: const InputDecoration(
                    label: Text("email :"),
                    hintText: "Contoh : Puspita@gmail.com"),
              ),
              TextFormField(
                controller: noHpEcd,
                decoration: const InputDecoration(
                    label: Text("No Hp:"), hintText: "Contoh : 0812345678"),
              ),
              TextFormField(
                controller: passEcd,
                obscureText: true,
                decoration: const InputDecoration(
                    label: Text("password :"), hintText: "masukan password"),
              ),
              ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  title: "Register"),
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
