import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran_header.png"),
        Divider(
          color: them.primaryColor,
          thickness: 1.2,
          endIndent: 10,
          indent: 10,
          height: 5,
        ),
        Row(
          children: [
            const Expanded(
              child: Text(
                  "رقم السوره"
              ),
            )
            Container(
              width: 1.2,
              height: 45,
              color: them.primaryColor,
            )
            const Expanded(
              child: Text(
                "اسم السوره",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Divider(
          color: them.primaryColor,
          thickness: 1.2,
          endIndent: 10,
          indent: 10,
          height: 5,
        ),
        ListView.builder(itemBuilder: (context, index) =>,
            Text("sura Name", style: Theme.textTheme.,))
      ],
    );
  }
}
