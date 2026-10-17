import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.addExpense});

  final void Function(Expense expense) addExpense;

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // var titleValue = '';

  // void _saveTitle(String input) {
  //   titleValue = input;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.food;

  void _submitExpenseData() {
    double? amount = double.tryParse(_amountController.text);

    if (_titleController.text.trim().isEmpty ||
        amount == null ||
        amount <= 0 ||
        _selectedDate == null) {
      // show error
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Invalid Input'),
          content: Text(
            'Please make sure a valid title, amount, date and category was entered.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('Okay'),
            ),
          ],
        ),
      );

      return;
    }

    // print(_titleController.text);
    // print(_amountController.text);
    // print(formatter.format(_selectedDate!));
    // print(_selectedCategory.name);

    Expense newExpense = Expense(
      title: _titleController.text,
      amount: amount,
      date: _selectedDate!,
      category: _selectedCategory,
    );

    widget.addExpense(newExpense);

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Expense Added'),
        content: Text(
          'Expense has been added successfully.'
          '\nTitle: ${newExpense.title}, '
          '\nAmount: Php ${newExpense.amount.toStringAsFixed(2)}, '
          '\nDate: ${formatter.format(newExpense.date)}, '
          '\nCategory: ${newExpense.category.name.toUpperCase()}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.pop(context);
            },
            child: Text('Okay'),
          ),
        ],
      ),
    );
  }

  void _showDatePicker() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    ).then((onValue) {
      setState(() {
        _selectedDate = onValue;
      });
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            //onChanged: _saveTitle,
            controller: _titleController,
            maxLength: 20,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixText: 'Php ',
                    label: Text('Amount'),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _selectedDate == null
                          ? 'No date selected'
                          : formatter.format(_selectedDate!),
                    ),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Row(
                          children: [
                            Icon(categoryIcons[category]),
                            Text(category.name.toString().toUpperCase()),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                // onPressed: () {
                //   //print(titleValue);
                //   print(_titleController.text);
                //   print(_amountController.text);
                //   print(formatter.format(_selectedDate!));
                //   print(_selectedCategory.name);
                // },
                onPressed: _submitExpenseData,
                child: Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
