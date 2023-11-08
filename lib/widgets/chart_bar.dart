import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final label;
  final double spendingAmount;
  final double spendingpacentofTotal;
  const ChartBar(this.label, this.spendingAmount, this.spendingpacentofTotal,
      {super.key});

  @override
  Widget build(BuildContext context) {
     return  LayoutBuilder(builder: (ctx, Constraints) {
        return Column(
          children: [
             SizedBox(
              height: Constraints.maxHeight * 0.15,
               child: FittedBox(
                    child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
                    ),
             ),
            
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: const Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingpacentofTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
              
            ),
          ],
        );
      });
  }
}
