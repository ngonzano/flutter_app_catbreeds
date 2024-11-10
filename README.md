# Cat API Flutter App

![Icono del Proyecto](assets/img/icon.png)

### IOS - Cupertino
<div style="display: flex; justify-content: space-around;">
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_1.png?alt=media&token=3ffffbbc-a5de-4aa0-8cef-fc8fd499a87d" alt="screenshot 1" width="200" />
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_2.png?alt=media&token=ac1977df-2cfa-455a-b490-907cbd676d8e" alt="screenshot 2" width="200" />
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_3.png?alt=media&token=4c20664b-5906-4fcb-8314-e8504a498d52" alt="screenshot 3" width="200" />
</div>

### Android - Materal
<div style="display: flex; justify-content: space-around;">
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_xxx.jpg?alt=media&token=97149f8b-83e0-40f6-a9bd-e0b72a5aa877" alt="screenshot 1" width="200" />
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_xx.jpg?alt=media&token=06bb6067-98d4-4848-a8dd-9e01bfa1ef8a" alt="screenshot 2" width="200" />
  <img src="https://firebasestorage.googleapis.com/v0/b/hl-delivery.appspot.com/o/aaa_pragma%2Fimg_x.jpg?alt=media&token=b2d6df31-d552-418f-9634-7f1c5a6b7064" alt="screenshot 3" width="200" />
</div>


Este es un proyecto de Flutter que utiliza la API de [TheCatAPI](https://developers.thecatapi.com/) para mostrar imágenes aleatorias de gatos. El proyecto hace uso de varias tecnologías y bibliotecas de Flutter para crear una experiencia fluida tanto en iOS como en Android.

## Características

- **API de Gatos**: Utiliza [TheCatAPI](https://developers.thecatapi.com/) para obtener imágenes aleatorias de gatos.
- **Gestión de estado**: Se usa [Riverpod](https://riverpod.dev/) para manejar el estado de la aplicación de manera eficiente y escalable.
- **Interfaz de usuario**: Combina los widgets de [Cupertino](https://flutter.dev/docs/development/ui/widgets/cupertino) y [Material Design](https://flutter.dev/docs/development/ui/widgets/material) para ofrecer una experiencia coherente en ambos sistemas operativos.
- **Enrutamiento**: Se utiliza [go_router](https://pub.dev/packages/go_router) para gestionar el enrutamiento de manera declarativa.
- **Variables de entorno**: [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) se utiliza para gestionar las variables de entorno de forma segura.
- **Consumo de API**: Se emplea [http](https://pub.dev/packages/http) para realizar peticiones a la API de TheCatAPI.

## Paquetes utilizados

### Dependencias principales

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  flutter_riverpod: ^2.6.1
  riverpod_annotation: ^2.6.1
  go_router: ^14.0.1
  http: ^1.2.2
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0
  get_it: ^8.0.0
  flutter_dotenv: ^5.2.1
  lottie: ^3.1.3

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^4.0.0
  riverpod_generator: ^2.6.2
  build_runner: ^2.4.13
  custom_lint: ^0.7.0
  riverpod_lint: ^2.6.2
  freezed: ^2.5.2
  json_serializable: ^6.8.0
  ```

# Arquitectura y gestión de estado
Riverpod

El proyecto usa Riverpod para gestionar el estado de manera eficiente y escalable. Se organizan los estados de la aplicación en Providers, lo que permite que cualquier cambio en los datos se propague de forma reactiva a las interfaces de usuario.

go_router

Para el enrutamiento se utiliza go_router, que permite una navegación declarativa en la aplicación, facilitando la organización de las rutas y la navegación entre pantallas de forma sencilla.

# Variables de entorno
Se utiliza flutter_dotenv para manejar las claves de la API y otras configuraciones sensibles de forma segura. Asegúrate de agregar tu archivo .env en la raíz del proyecto con la clave de la API de TheCatAPI.

en la ruta hay un archivo .env.example de modelo.

# FVM y Flutter Version

Este proyecto usa FVM (Flutter Version Manager) para gestionar las versiones de Flutter. La versión específica de Flutter que se está utilizando es:

Flutter 3.24.2 (canal estable)
•	Framework: revision 4cf269e36d (10 semanas atrás)
•	Engine: revision a6bd3f1de1
•	Herramientas: Dart 3.5.2 | DevTools 2.37.2