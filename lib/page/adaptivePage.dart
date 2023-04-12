import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptivePage extends StatefulWidget {
  AdaptivePage({
    super.key,
    required this.platform,
  });

  final TargetPlatform platform;

  @override
  State<AdaptivePage> createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  bool loveFlutter = true;
  bool switchValues = true;
  double minValue = 0;
  double maxValue = 100;
  double currentValue = 25;
  String text = " ";
  int groupValu = 0;

  List<Text> animals = [
    Text("Chien"),
    Text("Chat"),
    Text("Herisson"),
    Text("Geai"),
    Text("Scorpion"),
  ];
  @override
  Widget build(BuildContext context) {
    /* final platform = Theme.of(context).platform; */
    /* final isIOS = (widget.platform == TargetPlatform.iOS); */
    return scaffold();
  }

  bool isiOS() => (widget.platform == TargetPlatform.iOS);

  Widget scaffold() {
    return (isiOS())
        ? CupertinoPageScaffold(navigationBar: navBar(), child: body())
        : Scaffold(
            appBar: appBar(),
            body: body(),
          );
  }

  AppBar appBar() {
    return AppBar(title: Text('Notre design Sous Android'));
  }

  CupertinoNavigationBar navBar() {
    return CupertinoNavigationBar(
      middle: Text('Notre design sous IOS'),
      backgroundColor: Colors.red,
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(padding: EdgeInsets.only(top: 8)),
        button(),
        Divider(),
        switchRow(),
        Divider(),
        sliderColumn(),
        Divider(),
        textField(),
        Text(text),
        Divider(),
        Text("Appuyez ici pour montrer une alerte"),
        fab(),
        Divider(),
        picker(),
      ]),
    );
  }

  Widget button() {
    return (isiOS())
        ? CupertinoButton(
            child: TextButton(),
            onPressed: onButtonPressed,
            color: Colors.red,
          )
        : ElevatedButton(onPressed: onButtonPressed, child: TextButton());
  }

  Text TextButton() {
    return Text((isiOS()) ? "I love Flutter" : "php is my favorite");
  }

  void onButtonPressed() {
    setState(() {
      loveFlutter = !loveFlutter;
    });
  }

  Row switchRow() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(switchValues ? "Je suis vrai" : "Je suis faut"),
          switchAdaptive()
        ],
      );

  Widget switchAdaptive() {
    return (isiOS())
        ? CupertinoSwitch(value: switchValues, onChanged: onSwitchChange)
        : Switch(value: switchValues, onChanged: onSwitchChange);
  }

  void onSwitchChange(bool newValue) {
    setState(() {
      switchValues = newValue;
    });
  }

  Widget slider() {
    return (isiOS())
        ? CupertinoSlider(
            value: currentValue,
            min: minValue,
            max: maxValue,
            onChanged: onSliderChange)
        : Slider(
            value: currentValue,
            min: minValue,
            max: maxValue,
            onChanged: onSliderChange);
  }

  onSliderChange(double newValue) {
    setState(() {
      currentValue = newValue;
    });
  }

  Column sliderColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Min: ${minValue.toInt().toString()}"),
            Text("Max: ${maxValue.toInt().toString()}")
          ],
        ),
        slider(),
        Text(currentValue.toInt().toString())
      ],
    );
  }

  Widget textField() {
    return isiOS()
        ? CupertinoTextField(
            onSubmitted: SubmittedText,
            placeholder: "Entrez quelques chose",
          )
        : TextField(
            onSubmitted: SubmittedText,
            decoration: InputDecoration(hintText: "Entrez ce que vous voulez"),
          );
  }

  SubmittedText(String newValue) {
    setState(() {
      text = newValue;
    });
  }

  Widget actionSheet() {
    return CupertinoActionSheet(
      title: Text("Notre actionSheet"),
      message: Text("Notre Message"),
      actions: [
        CupertinoDialogAction(
          child: Text("Oui"),
          onPressed: close,
        ),
        CupertinoDialogAction(child: Text("Non")),
        CupertinoDialogAction(child: Text("Peut-être"))
      ],
    );
  }

  FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {
        if (isiOS()) {
          showDialog(
              context: context,
              builder: (BuildContext ctx) {
                return actionSheet();
              });
        }
      },
      child: Icon(Icons.apartment),
    );
  }

  void close() {
    Navigator.of(context).pop();
  }

  Widget picker() {
    return (!isiOS())
        ? Container()
        : Column(
            children: [
              CupertinoPicker(
                itemExtent: 50,
                onSelectedItemChanged: (int index) {
                  setState(() {
                    print("Mon index est : $index");
                  });
                },
                children: animals,
                diameterRatio: 0.2,
                backgroundColor: Colors.redAccent.shade200,
              ),
              CupertinoSegmentedControl(
                  groupValue: groupValu,
                  children: m(),
                  onValueChanged: (int index) {}),
              CupertinoSlidingSegmentedControl(
                  children: m(),
                  groupValue: groupValu,
                  onValueChanged: (int? index) {
                    setState(() {
                      groupValu =
                          index ?? 0; /* groupvalu egal à index ou zero */
                    });
                  })
            ],
          );
  }

  Map<int, Widget> m() {
    Map<int, Widget> newmap = {};
    for (var x = 0; x < animals.length; x++) {
      newmap[x] = animals[x];
    }
    return newmap;
  }
}
