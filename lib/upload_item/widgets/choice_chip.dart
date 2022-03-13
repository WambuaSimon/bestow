import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget(
      {Key? key,
      required this.onSelected,
      required this.isSelected,
      required this.color,
      required this.itemName})
      : super(key: key);

  final Function(bool) onSelected;
  final bool isSelected;
  final String itemName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        itemName,
        style: const TextStyle(color: Color(0xff002642), fontSize: 12),
      ),
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: color,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
