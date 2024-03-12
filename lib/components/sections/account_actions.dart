import 'package:bank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Açoes da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  print('Depositar');
                },
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  print('Transferir');
                },
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.cached),
                    text: 'Transferir',
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  print('Ler');
                },
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: 'Ler',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 60,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14,),
          ),
        ],
      ),
    );
  }
}
