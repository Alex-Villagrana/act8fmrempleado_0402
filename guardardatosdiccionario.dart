import 'claseempleado.dart';
import 'diccionarioempleado.dart';

class GuardarDatosDiccionario {
  // Agente para guardar los datos en el diccionario
  static void guardarEmpleado(String nombre, String puesto, double salario) {
    Empleado nuevo = Empleado(
      id: currentId,
      nombre: nombre,
      puesto: puesto,
      salario: salario,
    );

    datosempleado[currentId] = nuevo;
    currentId++;
  }
}
