# 🍽️ D3LYFOOD – Aplicación iOS

**Plataforma:** iOS – Swift – UIKit

---

##  Descripción del Proyecto
**D3LYFOOD** es una aplicación móvil para iOS cuyo objetivo es permitir al usuario consultar la **carta de un restaurante** y **valorar los platos** de forma rápida y sencilla.

El proyecto utiliza un **Navigation Controller**, pantallas enlazadas mediante **segues**, un sistema básico de usuarios y varias vistas que muestran listas, botones de valoración y emoticonos.

---

## Características principales
- Pantalla de **login y registro** con validación de usuarios.
- Gestión de usuarios mediante `Usuario` + `DataManager`.
- Lista de platos mediante **UITableView**.
- Navegación con **segues** entre pantallas.
- Pantallas de valoración con **tres botones**.
- Pantallas finales con **emoticonos** en función de la valoración.
- Estilo visual unificado: fondo común, títulos y back button personalizado.

---

## Arquitectura y Conceptos Clave

###  Elementos comunes en todas las pantallas
- Fondo visual igual para toda la app.
- Título superior identificando la pantalla.
- Botón "Back" mediante un *Outlet*.
- Navegación centralizada con **Navigation Controller**.

---

##  Navegación y Pantallas

###  Pantalla principal (Login & Registro)
Incluye:
- Logotipo (ImageView).
- Botones: **Acceder** y **Registrar**.
- TextFields para usuario y contraseña.
- Validación mediante:
  - Clase `Usuario`.
  - `DataManager` para almacenar credenciales.

Si los datos son incorrectos → aparece **alerta**.

---

###  Pantalla de lista de platos
Compuesta por:
- **TableView** con categorías de comida.
- Clase `Seccion` (NSObject) para generar listas.
- Modelo de datos mediante arrays de `String`.

Al seleccionar un elemento → se navega a la pantalla de valoración del plato.

---

###  Pantalla de valoración (Tres botones)
Incluye:
- Tres botones alineados y estilizados.
- Cada botón genera un segue distinto.
- La opción seleccionada determina la pantalla final.

---

###  Pantallas finales (Emoticonos)
Dependiendo del botón pulsado:
- Se muestra una pantalla diferente.
- Se utiliza un **ImageView** con un emoticono.
- Refleja la valoración positiva / neutra / negativa del plato.

---

##  Conceptos importantes del desarrollo

###  Gestión de usuarios
- Clase `Usuario` para almacenar datos.
- `DataManager` para guardar y validar credenciales.
- Validación en el ViewController principal usando Actions y Outlets.

###  Construcción de tablas
- Clase `Seccion` para crear listas con título.
- Arrays para poblar el modelo de datos.
- `UITableViewController` para renderizar celdas.

###  Navegación con segues
- Los botones y celdas llevan a pantallas diferentes.
- Cada pantalla tiene su propio ViewController.
- Los segues controlan la valoración y la pantalla final.

---

##  Índice del documento original
1. Introducción  
2. Elementos comunes de todas las pantallas  
3. Primera pantalla (Pantalla principal)  
4. Segunda pantalla (Lista de platos)  
5. Cuarta pantalla (Tres botones)  
6. Quinta pantalla (Emoticonos)

---


