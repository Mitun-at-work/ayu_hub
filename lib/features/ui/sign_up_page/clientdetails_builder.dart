
import 'package:ayu_hub/features/ui/sign_up_page/client_details.dart';

import 'package:flutter/material.dart';

class ClientDetailBuilder extends StatelessWidget {
  const ClientDetailBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return  ClientDetail();
        },
      ),
    );
  }
}
