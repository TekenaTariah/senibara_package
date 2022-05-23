import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';
import 'package:senibara/src/widgets/more_icons.dart';

class SBFooterControls extends StatefulWidget {
  ///The title of the page
  final String pageTitle;

  ///The major action of the page. Used for the elevated button text
  final Widget callToAction;

  ///PopupMenu options
  final List<String> options;
  final Function(String) onOptionSelected;
  const SBFooterControls({
    Key? key,
    required this.pageTitle,
    required this.callToAction,
    required this.options,
    required this.onOptionSelected,
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
          padding: const EdgeInsets.only(top: 8, right: 2),
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
                      color: Colors.grey.shade700,
                    ),
                    onPressed: () => Navigator.maybePop(context),
                  )),
              widget.callToAction,
              PopupMenuButton<String>(
                  child:
                      const SBMoreIcon(orientation: SBOrientation.horizontal),
                  onSelected: (value) => widget.onOptionSelected(value),
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
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Text(
              widget.pageTitle,
              style: const TextStyle(fontSize: 10),
            ))
      ],
    );
  }
}
