
// ignore_for_file: camel_case_types

import 'package:crud_app_v1/screens/listado_usuarios_screen.dart';
import 'package:flutter/material.dart';

class datosUsuarios{

  String nombre;
  String apellido;

  datosUsuarios({
    required this.nombre, 
    required this.apellido});
}

class crearUsuarioScreen extends StatefulWidget {
  const crearUsuarioScreen({super.key});

  @override
  State<crearUsuarioScreen> createState() => _crearUsuarioScreenState();
}

class _crearUsuarioScreenState extends State<crearUsuarioScreen> {

  final List<datosUsuarios> listadoUsuarios = [];
  final TextEditingController nombreControl = TextEditingController();
  final TextEditingController apellidoControl = TextEditingController();
  int? index;

  void crearUsuarios(){
    setState(() {
      listadoUsuarios.add(datosUsuarios(
        nombre: nombreControl.text, 
        apellido: apellidoControl.text));
    });

    nombreControl.clear();
    apellidoControl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 10,
        title: const Text('Crear usuario'),
        centerTitle: true,
        leading: const Icon(Icons.supervised_user_circle_outlined),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
        
            const SizedBox(height: 20,),
            TextFormField(
              controller: nombreControl,
              maxLength: 30,
              decoration: const InputDecoration(
                hintText: 'Nombre',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
            ),
        
            const SizedBox(height: 10,),
            TextFormField(
              controller: apellidoControl,
              maxLength: 30,
              decoration: const InputDecoration(
                hintText: 'Apellido',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
            ),
        
            const SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
                backgroundColor: Colors.blue,
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
              onPressed: (){crearUsuarios();}, 
              child: const Text('Guardar', style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 10,
        child: const Icon(Icons.person_pin, color: Colors.white,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => listadoUsuariosScreen(listadoUsuarios: listadoUsuarios),));
        }),
    );
  }
}
