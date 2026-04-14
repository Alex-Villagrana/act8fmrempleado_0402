import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('ZON SKATE SHOP', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2)),
        centerTitle: true,
        backgroundColor: Colors.red[900],
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skateboarding, size: 100, color: Colors.white),
              SizedBox(height: 40),
              _buildUrbanButton(
                context, 
                title: 'CAPTURAR EMPLEADO', 
                icon: Icons.person_add_alt_1,
                route: '/captura'
              ),
              SizedBox(height: 20),
              _buildUrbanButton(
                context, 
                title: 'VER EMPLEADOS', 
                icon: Icons.list_alt,
                route: '/ver'
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUrbanButton(BuildContext context, {required String title, required IconData icon, required String route}) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      splashColor: Colors.white,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.red[800],
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(color: Colors.white24, offset: Offset(4, 4)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 28),
            SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
