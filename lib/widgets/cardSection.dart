import 'package:flutter/material.dart';
import 'package:wallet_app/data.dart';
import 'package:wallet_app/widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text("Selected Card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ))),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (cntext, i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(children: <Widget>[
                  Positioned.fill(
                    bottom: -200,
                    top: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.7),
                        boxShadow: customShadow,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: -300,
                    bottom: -100,
                    top: -100,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.7),
                        boxShadow: customShadow,
                      ),
                    ),
                  ),
                  CardDetails()
                ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
