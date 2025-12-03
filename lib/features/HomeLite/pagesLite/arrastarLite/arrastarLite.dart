import 'package:flutter/cupertino.dart';

class TinderSwipeCards extends StatefulWidget {
  final List<Widget> cards;
  final VoidCallback? onLike;
  final VoidCallback? onDislike;

  const TinderSwipeCards({
    Key? key,
    required this.cards,
    this.onLike,
    this.onDislike,
  }) : super(key: key);

  @override
  State<TinderSwipeCards> createState() => _TinderSwipeCardsState();
}

class _TinderSwipeCardsState extends State<TinderSwipeCards> {
  Offset position = Offset.zero;
  double angle = 0;

  void resetCard() {
    setState(() {
      position = Offset.zero;
      angle = 0;
    });
  }

  void swipeRight() {
    widget.onLike?.call();
    setState(() {
      position += const Offset(500, 0);
      angle = 0.3;
    });
    Future.delayed(const Duration(milliseconds: 200), removeCard);
  }

  void swipeLeft() {
    widget.onDislike?.call();
    setState(() {
      position += const Offset(-500, 0);
      angle = -0.3;
    });
    Future.delayed(const Duration(milliseconds: 200), removeCard);
  }

  void removeCard() {
    if (widget.cards.isNotEmpty) {
      setState(() {
        widget.cards.removeAt(0);
        resetCard();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.cards.isEmpty) {
      return const Center(child: Text("Sem mais perfis"));
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        if (widget.cards.length > 1)
          Transform.scale(
            scale: 0.92,
            child: widget.cards[1],
          ),

        GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              position += details.delta;
              angle = position.dx * 0.002;
            });
          },
          onPanEnd: (_) {
            if (position.dx > 120) {
              swipeRight();
            } else if (position.dx < -120) {
              swipeLeft();
            } else {
              resetCard();
            }
          },
          child: Transform.translate(
            offset: position,
            child: Transform.rotate(
              angle: angle,
              child: widget.cards.first,
            ),
          ),
        ),
      ],
    );
  }
}
