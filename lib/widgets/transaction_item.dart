import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class TransactionItem extends StatefulWidget {
  final double amount;
  final String transactionTitle;
  final DateTime date;

  TransactionItem({this.amount, this.transactionTitle, this.date});

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          radius: 50,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: FittedBox(
              child: Text(
                '\$${widget.amount}',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          widget.transactionTitle,
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(widget.date),
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            return showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text('⚠ Sure ?!'),
                content: Text(
                  'Do you want to mark this as pricey expense?',
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.of(ctx).pop(false);
                    },
                  ),
                  TextButton(
                    child: Text('Yes'),
                    onPressed: () {
                      Navigator.of(ctx).pop(true);
                    },
                  ),
                ],
              ),
            );
          },
          icon: Icon(
            Icons.remove_done,
            semanticLabel: 'Done',
            size: 30,
            color: Theme.of(context).errorColor,
          ),
        ),
      ),
    );
  }
}
