// import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/providers/transaction_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';
//
// import '../models/transaction.dart';
// import '../widgets/transaction_item.dart';
//
// class TransactionList extends StatefulWidget {
//
//   @override
//   State<TransactionList> createState() => _TransactionListState();
// }
//
// class _TransactionListState extends State<TransactionList> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     final transactionData = Provider.of<Expenses>(context);
//     final expenseData = transactionData.transactions;
//
//     return Column(
//         children: widget.expenseData
//             .map(
//               (e) => Dismissible(
//                   key: Key(e.id),
//                   onDismissed: (_) {
//                     return showDialog(
//                       context: context,
//                       builder: (ctx) => AlertDialog(
//                         title: Text('Are you sure?'),
//                         content: Text(
//                           'Do you want to remove the item from the cart?',
//                         ),
//                         actions: <Widget>[
//                           TextButton(
//                             child: Text('No'),
//                             onPressed: () {
//                               Navigator.of(ctx).pop(false);
//                             },
//                           ),
//                           TextButton(
//                             child: Text('Yes'),
//                             onPressed: () {
//                               Navigator.of(ctx).pop(true);
//                             },
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                   background: Padding(
//                     padding: EdgeInsets.only(bottom: 15),
//                     child: Container(
//                       color: Theme.of(context).errorColor,
//                       child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 15),
//                           child: Icon(Icons.delete_sweep,
//                               size: 40, color: Colors.white70)),
//                       alignment: Alignment.centerRight,
//                     ),
//                   ),
//                   direction: DismissDirection.endToStart,
//                   child: TransactionItem(
//                     amount: e.amount,
//                     transactionTitle: e.title,
//                     date: e.date,
//                   )),
//             )
//             .toList());
//   }
// }
