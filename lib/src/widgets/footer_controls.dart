import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';
import 'package:senibara/src/widgets/more_icons.dart';

class SBFooterControls extends StatefulWidget {
  ///The title of the page
  final String pageTitle;

  ///The major action of the page. Used for the elevated button text
  final String callToAction;

  ///Action to be performed when callToAction is clicked
  final VoidCallback onCallToAction;

  ///PopupMenu options
  final List<String> options;
  final Function(String) optionSelected;
  const SBFooterControls({
    Key? key,
    required this.pageTitle,
    required this.callToAction,
    required this.onCallToAction,
    required this.options,
    required this.optionSelected,
  }) : super(key: key);

  @override
  State<SBFooterControls> createState() => _SBFooterControlsState();
}

class _SBFooterControlsState extends State<SBFooterControls> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.shade300))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RotatedBox(
                  quarterTurns: 2,
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.grey.shade900,
                    ),
                    onPressed: () => Navigator.maybePop(context),
                  )),
              TextButton(
                child: Text(
                  widget.callToAction,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: widget.onCallToAction,
              ),
              PopupMenuButton<String>(
                  child:
                      const SBMoreIcon(orientation: SBOrientation.horizontal),
                  onSelected: (value) => widget.optionSelected(value),
                  itemBuilder: (BuildContext context) =>
                      List.from(widget.options.map(
                        (option) => PopupMenuItem<String>(
                          value: option,
                          child: Text(option),
                        ),
                      ))),
            ],
          ),
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(2))),
            padding: const EdgeInsets.symmetric(vertical:2,horizontal: 4),
            child: Text(
              widget.pageTitle,
              style: const TextStyle(fontSize: 10),
            ))
      ],
    );
  }
}
