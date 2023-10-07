import 'package:flutter/material.dart';

class FormulirScreen extends StatefulWidget {
  const FormulirScreen({super.key});

  @override
  State<FormulirScreen> createState() => _FormulirScreenState();
}

class _FormulirScreenState extends State<FormulirScreen> {
  final GlobalKey<FormState>_fromKey = GlobalKey<FormState>();
  String? _name;
  String? _pass;
  final nameEcd = TextEditingController();
  final passEcd = TextEditingController();

  @override
  void dispose(){
    nameEcd.dispose();
    passEcd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Formulir"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _fromKey,
         autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
               controller: nameEcd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                   // BorderRadius.all(Radius.circular(30)
                    ),
                  prefixIcon: Icon(Icons.person),
                  hintText: "contoh : Puspita",
                  labelText: "Nama : "
                ),
                onChanged: (String? value){
                 setState(() {
                   _name = value;
                 });
                },
                validator: (String? value){
                 if (value == null || value.isEmpty){
                   return 'Nama tidak boleh kosong';
                 }
                },
              ),
              TextFormField(
                controller: passEcd,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "masukan password",
                    labelText: "Password "
                ),
                onChanged: (String? value){
                  setState(() {
                    _pass = value;
                  });
                },
                validator: (String? value){
                  if (value == null || value.isEmpty){
                    return 'Pass tidak boleh kosong';
                  }
                  if (value.contains('@')){
                    return 'pass harus angka/huruf';
                  }
                },
              ),
              ElevatedButton(onPressed: (){
                print(nameEcd.text);
                print(passEcd.text);
              }, child: Text("Submit"))
              //Text(nameEcd.text)
            ],
          ),
        ),
      ),
    );
  }
}
