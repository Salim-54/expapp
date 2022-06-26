import 'package:flutter/material.dart';

class ExpenseForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void _presentDatePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now(),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Form(
        child: Container(
            height: 500,
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left:180),
                  child: Row(
                    children: [
                      Text('Add date'),
                      IconButton(onPressed: _presentDatePicker, icon: Icon(Icons.date_range_rounded),),
                    ],
                  ),
                ),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Transaction',
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Amount spent',
                    border: UnderlineInputBorder(),
                  ),
                ),

                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Save transaction',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor,
                ),))
              ],
            ),
          ),
        ),
    );
  }
}

// class NewTransaction extends StatelessWidget {
//   // String TitleInput;
//   // String AmountInput;
//   final titleController = TextEditingController();
//   final amountController = TextEditingController();
//   final Function addNewTransaction;
//
//   NewTransaction(this.addNewTransaction);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//                 //     onChanged: (value) => {
//                 // TitleInput = value,
//                 // }
//                 controller: titleController,
//                 decoration: InputDecoration(labelText: 'Title')),
//             TextField(
//                 //     onChanged: (value) => {
//                 // AmountInput = value,
//                 // }
//                 controller: amountController,
//                 decoration: InputDecoration(
//                   labelText: 'Amount',
//                 )),
//             TextButton(
//               child: Text('Add a new transaction'),
//               onPressed: () => addNewTransaction(titleController.text,double.parse(amountController.text)),
//             ),
//           ],
//         ),
//       ),
//       elevation: 5,
//     );
//   }
// }
