import 'package:flutter/material.dart';

import '../view/pages/angebot.dart';
import '../view/pages/angebot_mobile.dart';

class MenuAngebot {
  static List<Widget> getMenu(BuildContext context) {
    return [
      ListTile(
        title: const Text(
          'Wirbelsäulen-Basis-Ausgleich',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(WBA nach Rolf Ott)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(1),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Wirbelsäulen-Therapie',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(nach Dorn)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(2),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text('Rückenmuskel-Therapie', style: _styleTitle),
        subtitle: const Text(
          '(nach Breuss)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(3),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Schmerz-Therapie',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(nach Liebscher & Bracht)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(4),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Engpassdehnung',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(nach Liebscher & Bracht)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(5),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'RESET - Kieferentspannung',
          style: _styleTitle,
        ),
        subtitle: const Text(
          'Kiefergelenks-Balancierung',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(6),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Raindrop-Massage',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(nach Gary Young)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(7),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Schröpf-Behandlung',
          style: _styleTitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(8),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        title: const Text(
          'Kartenlegungen',
          style: _styleTitle,
        ),
        subtitle: const Text(
          '(nach Dr. Chuck Spezzano)',
          style: _styleSubtitle,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Angebot(9),
          ),
        ),
      ),
      const SizedBox(height: 7),
    ];
  }

  static List<Widget> getMenuSmallDevice(BuildContext context) {
    return [
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Wirbelsäulen-Basis-Ausgleich',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(WBA nach Rolf Ott)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(0),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Wirbelsäulen-Therapie',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(nach Dorn)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(1),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title:
            const Text('Rückenmuskel-Therapie', style: _styleTitleSmallDevice),
        subtitle: const Text(
          '(nach Breuss)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(2),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Schmerz-Therapie',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(nach Liebscher & Bracht)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(3),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Engpassdehnung',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(nach Liebscher & Bracht)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(4),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'RESET - Kieferentspannung',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          'Kiefergelenks-Balancierung',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(5),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Raindrop-Massage',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(nach Gary Young)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(6),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Schröpf-Behandlung',
          style: _styleTitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(7),
          ),
        ),
      ),
      const Divider(
        thickness: 0.5,
        indent: 10,
        endIndent: 10,
        color: Colors.white70,
      ),
      ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        title: const Text(
          'Kartenlegungen',
          style: _styleTitleSmallDevice,
        ),
        subtitle: const Text(
          '(nach Dr. Chuck Spezzano)',
          style: _styleSubtitleSmallDevice,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AngebotMobile(8),
          ),
        ),
      ),
      const SizedBox(height: 7),
    ];
  }

  static const TextStyle _styleTitle = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 20,
    letterSpacing: 2,
    color: Colors.white,
  );

  static const TextStyle _styleSubtitle = TextStyle(
    fontFamily: 'Kalam',
    letterSpacing: 2,
    color: Colors.white,
  );

  static const TextStyle _styleTitleSmallDevice = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 17.5,
    letterSpacing: 2,
    color: Colors.white,
    fontWeight: FontWeight.w100,
  );

  static const TextStyle _styleSubtitleSmallDevice = TextStyle(
    fontFamily: 'Kalam',
    letterSpacing: 2,
    color: Colors.white,
    fontSize: 12.2,
    fontWeight: FontWeight.w100,
  );
}
