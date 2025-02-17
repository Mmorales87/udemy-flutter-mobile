import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Copunter',
      subTitle: 'Introduccion a Riverpod',
      link: '/counter_screen',
      icon: Icons.add),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Statefull widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introfductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite scroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite_scroll',
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: 'Theme changer',
      subTitle: 'Replace the theme of the app',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
