import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tips/providers/tip_time_provider.dart';

class HomePage extends StatelessWidget {
  
  HomePage({
    Key? key,
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: 
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Cost of service"),
                  controller: Provider.of<TipTimeProvider>(context).costController,
                  keyboardType: TextInputType.number,
                ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("How was the service?"),
          ),
          Column(children: context.read<TipTimeProvider>().radioGroupValues.entries
          .map(
            (e) => ListTile(
              title: Text("${e.value}"),
              leading: Radio(value: e.key, groupValue: context.watch<TipTimeProvider>().getSelectedRadio, 
              onChanged: (newValue){
                context
                  .read<TipTimeProvider>().setSelectedRadio(newValue);
              },),
          )).toList()),
          SwitchListTile(
            secondary: Icon(Icons.credit_card),
            title: Text("Round up tip"),
            value: context.watch<TipTimeProvider>().isSelected,
            onChanged: (newVal){
              context.read<TipTimeProvider>().setIsSelected(newVal);
              
            },
          ),
          SizedBox(
            width: 200,
            child: MaterialButton(
              minWidth: 150,
              color: Colors.green,
              child: Text("CALCULATE", style: TextStyle(color: Colors.white)),
              onPressed: (){
                double cost =double.parse(context.read<TipTimeProvider>().costController.text);
                context.read<TipTimeProvider>().tipCalculation(cost);
              },
            ),
          ),
          Consumer<TipTimeProvider>(
            builder: (context, provider, child) => Align(
              alignment: Alignment.topRight,
              child: Text("Tip Amount: \$${provider.tipAmount.toStringAsFixed(2)}"),
            )),
        ],
      ),
    );
  }
  
}