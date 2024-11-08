import 'package:flutter/services.dart';

class PlatformService {
  static const platform = MethodChannel('com.ngonzano.catbreeds/channel');

  // Método para obtener la versión del sistema operativo desde la plataforma nativa
  static Future<Map> getPlatformVersion() async {
    try {
      final Map version = await platform.invokeMethod('getPlatformVersion');
      return version;
    } on PlatformException catch (e) {
      return {"error": "Failed to get platform version: '${e.message}'."};
    }
  }
}
