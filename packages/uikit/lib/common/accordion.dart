import 'package:flutter/material.dart';
import 'package:im_uikit/components/buttons/ink_well.dart';

const _duration = Duration(milliseconds: 300);

class Accordion extends StatefulWidget {
  const Accordion({
    required this.title,
    this.content,
    this.button,
    super.key,
  });

  final Widget title;
  final Widget? content;
  final Widget? button;

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion>
    with SingleTickerProviderStateMixin {
  late final AnimationController _expandController;
  late final Animation<double> _animation;
  bool _opened = false;

  @override
  void initState() {
    super.initState();
    _prepareAnimations();
  }

  void _prepareAnimations() {
    _expandController = AnimationController(
      value: 0,
      vsync: this,
      duration: _duration,
    );
    _animation = CurvedAnimation(
      parent: _expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    _expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyInkWell(
          onTap: _toggle,
          child: Row(
            children: [
              Expanded(child: widget.title),
              IconButton(
                onPressed: _toggle,
                icon: _opened
                    ? const Icon(Icons.arrow_drop_up_rounded)
                    : const Icon(Icons.arrow_drop_down_rounded),
              ),
            ],
          ),
        ),
        SizeTransition(
          axisAlignment: 1,
          sizeFactor: _animation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.content ?? const SizedBox.shrink(),
              widget.button ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }

  void _toggle() {
    _opened = !_opened;
    updateState();

    if (_opened) {
      _expandController.forward();
    } else {
      _expandController.reverse();
    }
  }
}
