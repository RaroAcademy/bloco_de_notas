import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

class EmptyHomeBody extends StatelessWidget {
  const EmptyHomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          top: true,
          child: Image.asset(
            "assets/images/empty_notes_background.png",
            fit: BoxFit.scaleDown,
          ),
        ),
        Align(
          alignment: Alignment(Alignment.center.x, -0.33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Hero(
                tag: "notes_logo",
                child: Image.asset(
                  "assets/images/notes_logo.png",
                ),
              ),
              Hero(
                tag: "journal",
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    "journal",
                    style: TextStyles.white48w700Montserrat,
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  left: 40.0,
                  right: 40.0,
                ),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        "Não importa onde você esteja! Guarde suas ideias pra depois ;)",
                        style: TextStyles.roxo24w400Roboto,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      "Comece agora a criar as suas notas!",
                      style: TextStyles.ciano16w400Roboto,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
