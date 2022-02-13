//Lo renombramos para que las funciones del paquete no se confundan con las de nuestra clase
import 'package:flutter/widgets.dart';
import 'package:flutter_modulo1_fake_backend/modulo1_fake_backend.dart'
    as server;
import 'package:flutter_modulo1_fake_backend/models.dart';

class ServerController {
  //metodo que inicializa los datos, usualmente no se hace esto
  void init(BuildContext context) {
    //generateData: genera los datos
    server.generateData(context);
  }

  Future<User> login(String userName, String password) async {
    return await server.backendLogin(userName, password);
  }
}
