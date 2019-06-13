import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final Color expandingButtonColor;
  ReadMoreText(this.text, {this.expandingButtonColor});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText>
    with TickerProviderStateMixin<ReadMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final expandingButtonColor = widget.expandingButtonColor != null
        ? widget.expandingButtonColor
        : Colors.black;
    return Column(children: <Widget>[
      AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: ConstrainedBox(
              constraints: isExpanded
                  ? BoxConstraints()
                  : BoxConstraints(maxHeight: 50.0),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  widget.text,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ))),
      Row(
        children: <Widget>[
          FlatButton(
              child: Text('${isExpanded ? 'Show less' : 'Read more'}',
                  style: TextStyle(color: expandingButtonColor)),
              onPressed: () => setState(() => isExpanded = !isExpanded))
        ],
      )
    ]);
  }
}
