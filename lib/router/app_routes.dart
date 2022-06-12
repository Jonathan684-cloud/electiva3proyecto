import 'package:proyectoelectivaa/screens/screen_export.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'login',
        name: 'Iniciar Sesion',
        screen: const LoginScreen(),
        icon: Icons.login_outlined),
    MenuOption(
        route: 'registro',
        name: 'Crear cuenta',
        screen: const RegistroScreen(),
        icon: Icons.app_registration),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}

class AppRouteSesion {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(/* 0 */
        route: 'perfil',
        name: 'Mi Perfil',
        screen: const MiPerfilScreen(),
        icon: Icons.person),
    MenuOption(/* 1 */
        route: 'pedidos',
        name: 'Mis Pedidos',
        screen: const PedidoActualScreen(),
        icon: Icons.book_online),
    MenuOption(/* 2 */
        route: 'historial',
        name: 'Mi Historial de Pedidos',
        screen: HistorialPedidosScreen(),
        icon: Icons.app_registration),
    MenuOption(/* 3 */
        route: 'login',
        name: 'Iniciar Sesion',
        screen: const LoginScreen(),
        icon: Icons.login_outlined),
    MenuOption(/* 4 */
        route: 'registro',
        name: 'Crear cuenta',
        screen: const RegistroScreen(),
        icon: Icons.app_registration),
    MenuOption(/* 5 */
        route: 'home',
        name: 'Cerrar Sesion',
        screen: const HomeScreen(),
        icon: Icons.close_outlined),
    MenuOption(/* 6 */
        route: 'promo',
        name: 'Promocion Dia',
        screen: const PromoDiariaScreen(), //6
        icon: Icons.food_bank_rounded),
    MenuOption(/* 7 */
        route: 'detalle',
        name: 'Detalle Hamburguesa',
        screen: const DetalleProducto(),
        icon: Icons.format_overline_outlined),
    MenuOption(/* 8 */
        route: 'kids',
        name: 'Combo Kids',
        screen: const ComboKidsScreen(), //8
        icon: Icons.format_overline_outlined),
    MenuOption(/* 9 */
        route: 'familia',
        name: 'Combo Family',
        screen: const ComboFamiliarScreen(), //9
        icon: Icons.format_overline_outlined),
    MenuOption(/* 10 */
        route: 'crear',
        name: 'Crear Burger',
        screen: const CreateBurgerScreen(), //10
        icon: Icons.format_overline_outlined),
    MenuOption(/* 11 */
        route: 'cart',
        name: 'Cesta de compra',
        screen: const ShoopingCart(), //10
        icon: Icons.format_overline_outlined),
    MenuOption(/* 12 */
        route: 'homie',
        name: 'Cesta de compra',
        screen: const HomeScreen(), //10
        icon: Icons.format_overline_outlined),
    MenuOption(/* 13 */
        route: 'vacio',
        name: 'Cesta de compra',
        screen: const ShoopingCartVacio(), //10
        icon: Icons.format_overline_outlined),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
