import 'package:flutter/material.dart';

class CategoryItem {
  final String id, name;
  CategoryItem(this.id, this.name);
}

class MultiSelectChip extends StatefulWidget {
  final List<CategoryItem> categories;
  final void Function(List<String>) onSelectionChanged;

  const MultiSelectChip({
    required this.categories,
    required this.onSelectionChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<MultiSelectChip> createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  final Set<String> _selected = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 8,
      children: widget.categories.map((c) {
        final sel = _selected.contains(c.id);
        return FilterChip(
          label: Text(
            c.name,
            style: TextStyle(
              color: sel ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          selected: sel,
          selectedColor: Colors.teal,
          backgroundColor: Colors.grey[200],
          checkmarkColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onSelected: (on) {
            setState(() {
              on ? _selected.add(c.id) : _selected.remove(c.id);
              widget.onSelectionChanged(_selected.toList());
            });
          },
        );
      }).toList(),
    );
  }
}
