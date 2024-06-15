import 'package:flutter/material.dart';

class Range extends StatefulWidget {
  @override
  _RangeState createState() => _RangeState();
}

class _RangeState extends State<Range> {
  double _currentRangeValue = 50000;
  final int _maxValue = 100000;
  final List<int> _minValues = [0, 10000, 20000, 30000, 40000, 50000];
  int _selectedMinValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Price'),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedMinValue = 0;
                    _currentRangeValue = 50000;
                  });
                },
                child: Text(
                  'Clear',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Slider(
            value: _currentRangeValue,
            max: _maxValue.toDouble(),
            min: _selectedMinValue.toDouble(),
            divisions: 10,
            label: _currentRangeValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentRangeValue = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<int>(
                value: _selectedMinValue,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedMinValue = newValue!;
                    if (_currentRangeValue < _selectedMinValue) {
                      _currentRangeValue = _selectedMinValue.toDouble();
                    }
                  });
                },
                items: _minValues.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('₹ $value'),
                  );
                }).toList(),
              ),
              Text('to'),
              Text('₹ ${_maxValue.toString()}'),
            ],
          ),
        ],
      ),
    );
  }
}
