import 'package:flutter/material.dart';
import 'diccionarioempleado.dart';

class VerEmpleadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final empleados = datosempleado.values.toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('ROSTER EMPLEADOS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.red[900],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: empleados.isEmpty
          ? Center(
              child: Text(
                'NO HAY EMPLEADOS \nREGISTRADOS AÚN',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: empleados.length,
              itemBuilder: (context, index) {
                final emp = empleados[index];
                return Card(
                  color: Colors.grey[900],
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white24, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#' + emp.id.toString(),
                              style: TextStyle(color: Colors.red[400], fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            Icon(Icons.skateboarding, color: Colors.white30),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          emp.nombre.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.work_outline, color: Colors.white70, size: 16),
                            SizedBox(width: 8),
                            Text(
                              emp.puesto,
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.attach_money, color: Colors.green[400], size: 16),
                            SizedBox(width: 8),
                            Text(
                              emp.salario.toStringAsFixed(2),
                              style: TextStyle(color: Colors.green[400], fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
