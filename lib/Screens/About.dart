import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  List data = [
    "Coronavirus is one of the common viruses that can cause infection in your sinuses, nose or upper throat.",
    "Most of them are not dangerous as they present with mild symptoms and can be treated symptomatically, but it killed around 858 people from Middle East respiratory syndrome (MERS) in 2015, this is because of its severe presentation causing respiratory failure.",
    "Undiscovered coronaviruses like the Wuhan Coronavirus are very dangerous because specific treatment for such viruses is not yet available and it rapidly progresses to cause multiorgan failure.",
    "This category of the virus causes harmful diseases in mammals as well as in birds. In humans, the virus causes mild respiratory infections, which in rare cases may even cause death.",
    "In animals like cows and pigs, it causes diarrhea, while in chickens it causes severe respiratory infections. You may be shocked to know that there are no vaccines currently available for the treatment of this disease.",
    "When it comes to the basic description of the virus, Coronavirus comes under the sub-family Orthocoronavirinae.It has been surrounded by an envelope like a frame, which gives a definite sense of the single-stranded RNA genome.",
    "The shape of their nucleocapsid is helical. The size of coronaviruses ranges from 26 to 32 kilobases. It is the largest category for an RNA virus. In most cases, it is difficult to detect if coronavirus or a different cold-causing virus is causing you fever.",
    "Known as “COVID-19”, the newly identified coronavirus can cause pneumonia, and like other respiratory infections, it has an incubation of between 1 and 14 days.",
  ];
  var clr = [
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        title: Text(
          'ABOUT COVID',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, i) {
          return Card(
            color: clr[i % 3],
            child: ListTile(
              title: Text('${data[i]}'),
            ),
          );
        },
      ),
    );
  }
}
