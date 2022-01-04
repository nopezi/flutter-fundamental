import 'dart:convert';

import 'package:lumen_flutter/ui/fundamental/text_style.dart';

class tombolFundamental {
  dataMenu() {
    List dataMenu = [
      {'judul': 'kucing', 'menu': BelajarTextStyle()}
    ];
    String menu = '[{"judul": "kucing", "menu": ""}]';
    List<dynamic> listMenu = List.from(jsonDecode(menu));

    return dataMenu;
  }
}
