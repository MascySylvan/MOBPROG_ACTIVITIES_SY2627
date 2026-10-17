import 'package:expense_app/chart/chart.dart';
import 'package:expense_app/expenses/expenses_list.dart';
import 'package:expense_app/expenses/new_expense.dart';
import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 100.0,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 20.0,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Pizza',
      amount: 40.0,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Cebu Trip',
      amount: 150.0,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void _openExpenseModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(addExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = registeredExpenses.indexOf(expense);

    setState(() {
      registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Expense deleted.'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text('No expenses found. Start adding some!'),
    );

    if (registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: registeredExpenses,
        removeExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
        actions: [
          IconButton(
            onPressed: _openExpenseModal,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          //Text('The chart!'),
          //Text('The list of expenses!'),
          Chart(expenses: registeredExpenses),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
