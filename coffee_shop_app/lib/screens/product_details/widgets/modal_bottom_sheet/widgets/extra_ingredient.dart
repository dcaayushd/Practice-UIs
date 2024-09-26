import 'package:flutter/material.dart';
import '/utils/constants.dart';

class ExtraIngredientWidget extends StatelessWidget {
  final String title;
  final String measurement;
  final String image;
  const ExtraIngredientWidget({
    super.key,
    required this.title,
    required this.measurement,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(image),
              ),
              Text(
                title,
                style: varelaLightBrown.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Flexible(flex: 3, child: IngredientCounterWidget(measure: measurement))
      ],
    );
  }
}

class IngredientCounterWidget extends StatefulWidget {
  final String measure;
  const IngredientCounterWidget({
    super.key,
    required this.measure,
  });

  @override
  State<IngredientCounterWidget> createState() =>
      _IngredientCounterWidgetState();
}

class _IngredientCounterWidgetState extends State<IngredientCounterWidget> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: count >= 1 ? Colors.brown.shade200 : Colors.grey,
              child: Text(
                "-",
                textScaler: const TextScaler.linear(1.5),
                textAlign: TextAlign.center,
                style: varelaWhite.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
              if (count > 0) {
                setState(() {
                  count--;
                });
              }
            },
          ),
          SizedBox(
            child: Text(
              "$count ${widget.measure} ",
              textAlign: TextAlign.center,
              textScaler: const TextScaler.linear(1.6),
              style: varelaBrown.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.brown.shade200,
              child: Text(
                "+",
                textScaler: const TextScaler.linear(1.5),
                textAlign: TextAlign.center,
                style: varelaWhite.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
        ],
      ),
    );
  }
}

class ExtraIngredientWidgetBinary extends StatefulWidget {
  final String title;
  final String image;

  const ExtraIngredientWidgetBinary(
      {super.key, required this.title, required this.image});

  @override
  State<ExtraIngredientWidgetBinary> createState() =>
      _ExtraIngredientWidgetBinaryState();
}

class _ExtraIngredientWidgetBinaryState
    extends State<ExtraIngredientWidgetBinary> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 55,
                child: Image.asset(
                  widget.image,
                ),
              ),
              Text(
                widget.title,
          textScaler: const TextScaler.linear(1.1),

                style: varelaLightBrown.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            height: 50,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor:
                        count == 1 ? Colors.brown.shade200 : Colors.grey,
                    child: Text(
                      "-",
                      textScaler: const TextScaler.linear(1.5),
                      textAlign: TextAlign.center,
                      style: varelaWhite.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    if (count == 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                ),
                SizedBox(
                  child: Text(
                    count == 0 ? "No" : "Yes",
                    textAlign: TextAlign.center,
                    textScaler: const TextScaler.linear(1.6),
                    style: varelaBrown.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor:
                        count == 0 ? Colors.brown.shade200 : Colors.grey,
                    child: Text(
                      "+",
                      textScaler: const TextScaler.linear(1.5),
                      textAlign: TextAlign.center,
                      style: varelaWhite.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    if (count == 0) {
                      setState(() {
                        count++;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
