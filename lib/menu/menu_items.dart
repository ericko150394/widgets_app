import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appItems = <MenuItem>[//Listado de MenuItem
  MenuItem(
    title: 'Botones',
    subTitle: 'Muchos botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.replay_outlined,
  ),

  MenuItem(
    title: 'Snackbars y Dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank,
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.gamepad,
  ),

  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Tutorial Introductorio',
    link: '/app-tutorial',
    icon: Icons.play_lesson,
  ),

  MenuItem(
    title: 'Infinite Scroll y Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.swipe_vertical,
  ),
];
