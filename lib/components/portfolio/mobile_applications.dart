import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileApplications extends StatelessWidget {
  const MobileApplications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            'assets/images/mobile_applications.png',
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      width: context.dynamicWidth(0.15),
      height: context.dynamicHeight(0.4),
      child: Column(
        children: [
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  print("Tıklandı: Flutter Projets");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          'Click to view!',
                          style: GoogleFonts.karla(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
