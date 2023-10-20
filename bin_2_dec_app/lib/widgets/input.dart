import 'package:flutter/material.dart';

class InputBin2Dec extends StatefulWidget {
  const InputBin2Dec({super.key});

  @override
  State<InputBin2Dec> createState() => _InputBin2DecState();
}

class _InputBin2DecState extends State<InputBin2Dec> {
  final _inputController = TextEditingController();
  String? _errorText;

  void _convert() {
    final enteredTitle = _inputController.text;
    int? binary = int.tryParse(enteredTitle, radix: 2);

    setState(() {
      if (enteredTitle.isEmpty) {
        _errorText = 'Vui lòng nhập dữ liệu';
        return;
      } else if (binary == null) {
        _errorText = 'Dữ liệu nhận vào chỉ nhận dạng nhị phân';
        return;
      } else {
        _errorText = null;
      }
    });

    setState(() {
      _inputController.text = int.parse(enteredTitle, radix: 2).toString();
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: TextFormField(
            controller: _inputController,
            decoration: InputDecoration(
              labelText: 'Bin2Dec',
              errorText: _errorText,
              border: InputBorder.none,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _convert,
          child: const Text('Convert'),
        )
      ],
    );
  }
}
