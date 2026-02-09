import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars and Dialogs',
    subTitle: 'Indicators on screen',
    link: '/snackbars',
    icon: Icons.info_outlined,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Animated Statefull Widget',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    subTitle: 'List of controls in Flutter',
    link: '/controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'Apps introduction',
    subTitle: 'Intro',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItems(
    title: 'Infinite scroll and Pull',
    subTitle: 'Infinite scroll and pull to refresh',
    link: '/infinite',
    icon: Icons.eight_k_outlined,
  ),
];
