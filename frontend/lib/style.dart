import "package:flutter/material.dart";

class AppStyle {
  // Define Color Style
  // Define Primary Color: Blue
  static const MaterialColor blue = MaterialColor(
    0xFF07689F,
    <int, Color>{
      50: Color(0xFFE6F0F5),
      100: Color(0xFFCDE1EC),
      200: Color(0xFF9CC3D9),
      300: Color(0xFF6AA4C5),
      400: Color(0xFF3986B2),
      500: Color(0xFF07689F),
      600: Color(0xFF105D89),
      700: Color(0xFF195374),
      800: Color(0xFF21485E),
      900: Color(0xFF2A3E49),
    },
  );
  // Define Secondary Color: Yellow
  static const MaterialColor yellow = MaterialColor(
    0xFFFFC93C,
    <int, Color>{
      50: Color(0xFFFFFAEB),
      100: Color(0xFFFFF4D8),
      200: Color(0xFFFFE9B1),
      300: Color(0xFFFFDF8A),
      400: Color(0xFFFFD463),
      500: Color(0xFFFFC93C),
      600: Color(0xFFD6AB3A),
      700: Color(0xFFAD8D38),
      800: Color(0xFF856F37),
      900: Color(0xFF5C5135),
    },
  );
  // Define GrayScale Color
  static const MaterialColor gray = MaterialColor(
    0xFF999999,
    <int, Color>{
      100: Color(0xFFEBEBEB),
      200: Color(0xFFD6D6D6),
      300: Color(0xFFC2C2C2),
      400: Color(0xFFADADAD),
      500: Color(0xFF999999),
      600: Color(0xFF858585),
      700: Color(0xFF707070),
      800: Color(0xFF5C5C5C),
      900: Color(0xFF474747),
    },
  );
  // Define Other Symbolic Color
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF333333);
  static const Color red = Color(0xFFFB0C06);
  static const Color sea = Color(0xFFA2D5F2);
  static const Color teal = Color(0xFF40A8C4);

  // Define Text Style
  static TextStyle header(
          {int level = 1,
          Color color = AppStyle.black,
          FontWeight weight = FontWeight.w500}) =>
      TextStyle(
        color: color,
        fontSize: 20.0 - level * 2.0,
        fontFamily: 'NotoSansTC',
        fontWeight: weight,
        letterSpacing: (20.0 - level * 2.0) * 0.08,
      );
  static TextStyle body(
          {int level = 1,
          Color color = AppStyle.black,
          FontWeight weight = FontWeight.w400}) =>
      TextStyle(
        color: color,
        fontSize: 16 - level * 2.0,
        fontFamily: 'NotoSansTC',
        fontWeight: weight,
        letterSpacing: (20.0 - level * 2.0) * 0.04,
      );
  static TextStyle caption(
          {int level = 1,
          Color color = AppStyle.black,
          FontWeight weight = FontWeight.w500}) =>
      TextStyle(
        color: color,
        fontSize: 18 - level * 4.0,
        fontFamily: 'NotoSansTC',
        fontWeight: weight,
        letterSpacing: (18 - level * 4.0) * 0.16,
      );
  static TextStyle info(
          {int level = 1,
          Color color = AppStyle.black,
          FontWeight weight = FontWeight.w300}) =>
      TextStyle(
        color: color,
        fontSize: 14 - level * 2.0,
        fontFamily: 'NotoSansTC',
        fontWeight: weight,
        letterSpacing: (12 - level * 2.0) * 0.04,
      );

  // Define Button Style
  static ButtonStyle primaryBtn() => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade300;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.blue[700]!;
            }
            return AppStyle.teal;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade100;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.white;
            }
            return AppStyle.white;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return AppStyle.caption();
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(95, 36)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: Colors.transparent);
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: Colors.transparent);
          }
          return const BorderSide(color: Colors.transparent);
        }),
      );

  static ButtonStyle secondaryBtn() => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade300;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.blue[700]!;
            }
            return AppStyle.white;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade100;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.blue[300]!;
            }
            return AppStyle.teal;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return AppStyle.caption();
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(95, 36)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: Colors.transparent);
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: AppStyle.blue);
          }
          return BorderSide(color: AppStyle.blue[100]!);
        }),
      );

  static ButtonStyle dangerBtn() => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade300;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.yellow[100]!;
            }
            return AppStyle.white;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade100;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.red;
            }
            return AppStyle.red;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return AppStyle.caption();
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(95, 36)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: Colors.transparent);
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: AppStyle.red);
          }
          return BorderSide(color: AppStyle.red.withOpacity(0.2));
        }),
      );

  static ButtonStyle popUpBtn() => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade300;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.yellow[800]!;
            }
            return AppStyle.yellow;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade100;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.white;
            }
            return AppStyle.black;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return AppStyle.caption();
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(95, 36)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: Colors.transparent);
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: Colors.transparent);
          }
          return const BorderSide(color: Colors.transparent);
        }),
      );

  static ButtonStyle textBtn() => ButtonStyle(
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 8, vertical: 0)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade300;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.teal;
            }
            return Colors.transparent;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppStyle.gray.shade100;
            }
            if (states.contains(MaterialState.pressed)) {
              return AppStyle.white;
            }
            return AppStyle.teal;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            return AppStyle.caption();
          },
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(47, 28)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const BorderSide(color: Colors.transparent);
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: Colors.transparent);
          }
          return const BorderSide(color: Colors.transparent);
        }),
      );
}
