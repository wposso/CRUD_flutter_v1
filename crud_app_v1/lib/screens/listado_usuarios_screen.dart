
// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:crud_app_v1/screens/screens.dart';
import 'package:flutter/material.dart';

class listadoUsuariosScreen extends StatelessWidget {

  final List<datosUsuarios> listadoUsuarios;

  const listadoUsuariosScreen({super.key, required this.listadoUsuarios});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 10,
        title: const Text('Listado usuarios'),
        centerTitle: true,
        leading: const Icon(Icons.receipt_long_sharp),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: listadoUsuarios.length,
          itemBuilder: (context, index) {
            final usuarios = listadoUsuarios[index];
            return Column(
              children: [

                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 216, 213, 205),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: ListTile(
                    title: Text('${usuarios.nombre} ${usuarios.apellido}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.edit))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
              ],
            );
          },),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        elevation: 10,
        child: const Icon(Icons.arrow_back, color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}
