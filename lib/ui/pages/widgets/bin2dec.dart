import 'package:flutter/material.dart';

class Bin2Dec extends StatelessWidget {
  final String binary, decimal;
  final void Function(int?) onAction;

  const Bin2Dec({
    Key? key,
    required this.binary,
    required this.decimal,
    required this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Text(
            decimal,
            textAlign: TextAlign.right,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Text(
            binary,
            textAlign: TextAlign.right,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
                      color: Theme.of(context).primaryColor,
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => onAction(1),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
                      color: Theme.of(context).primaryColor,
                      child: const Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => onAction(0),
                    ),
                  ),
                ),
              ]),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              // TODO: Establece el atributo [key] del widget para poder identificarlo en las pruebas
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () => onAction(null),
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
