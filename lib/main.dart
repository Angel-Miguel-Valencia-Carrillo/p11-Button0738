import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Valencia button"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 20),
          backgroundColor: const Color(0xff315697),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Botones con ícono y texto
              CustomOutlinedButton(
                isPressed: false,
                icon: Icons.star,
                text: 'Botón 1',
                color: Colors.red,
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                isPressed: false,
                icon: Icons.favorite,
                text: 'Botón 2',
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                isPressed: false,
                icon: Icons.thumb_up,
                text: 'Botón 3',
                color: Colors.green,
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                isPressed: false,
                icon: Icons.thumb_down,
                text: 'Botón 4',
                color: Colors.orange,
              ),
              SizedBox(height: 20),
              // Botones sin ícono
              CustomOutlinedButton(
                isPressed: false,
                text: 'Botón 5',
                color: Colors.purple,
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                isPressed: false,
                text: 'Botón 6',
                color: Colors.teal,
              ),
              SizedBox(height: 20),
              // Botones adicionales
              CustomOutlinedButton(
                isPressed: false,
                text: 'Botón 7',
                color: Colors.pink,
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                isPressed: false,
                text: 'Botón 8',
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final bool isPressed;
  final IconData? icon; // Ícono opcional
  final String text;
  final Color color;

  const CustomOutlinedButton({
    required this.isPressed,
    this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side:
            BorderSide(color: color, width: 2), // Borde del color especificado
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: isPressed
            ? Colors.grey.shade400
            : Colors.transparent, // Fondo gris si está presionado
        shadowColor: isPressed
            ? Colors.black26
            : Colors.transparent, // Sombra si está presionado
        elevation: isPressed ? 5 : 0, // Elevación solo cuando está presionado
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: 15), // Aumentar el tamaño del botón
      ), // Paréntesis de cierre agregado aquí
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del Row al contenido
        children: [
          if (icon != null)
            Icon(icon, color: color), // Muestra el ícono si está presente
          if (icon != null) SizedBox(width: 8), // Espacio entre ícono y texto
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 16,
            ),
          ),
        ],
      ), // Paréntesis de cierre agregado aquí
    ); // Paréntesis de cierre agregado aquí
  }
} // Paréntesis de cierre agregado aquí
