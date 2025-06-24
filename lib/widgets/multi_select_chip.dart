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
      spacing: 8,
      children: widget.categories.map((c) {
        final sel = _selected.contains(c.id);
        return FilterChip(
          label: Text(c.name),
          selected: sel,
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
