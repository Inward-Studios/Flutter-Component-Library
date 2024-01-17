import 'package:componentlibrary/constants.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IconSpringButton extends StatefulWidget {
  IconSpringButton({super.key, required this.isOutlined, required this.text});

  bool isOutlined;
  String text;
  @override
  State<IconSpringButton> createState() => _IconSpringButton();
}

class _IconSpringButton extends State<IconSpringButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );

    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _controller.forward();
        },
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            decoration: BoxDecoration(
              color: widget.isOutlined ? Colors.white : kPrimaryColor,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: Row(
                  children: [
                    Icon(
                      LucideIcons.mail,
                      color: widget.isOutlined ? kPrimaryColor : Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                        color: widget.isOutlined ? kPrimaryColor : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
