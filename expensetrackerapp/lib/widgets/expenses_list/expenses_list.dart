import 'package:expensetrackerapp/models/expense.dart';
import 'package:expensetrackerapp/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          child: const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "DELETE",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ],
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
