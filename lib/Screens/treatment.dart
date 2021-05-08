import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  @override
  _TreatmentState createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  int index = 0;
  List data = [
    [
      "Isolate yourself in a well ventilated room.",
      "Use a triple layer medical mask, discard mask after 8 hours of use or earlier if they become wet or visibly soiled. In the event of a caregiver entering the room, both caregiver and patient may consider using N 95 mask.",
      "Mask should be discarded only after disinfecting it with 1% Sodium Hypochlorite.",
      "Take rest and drink a lot of fluids to maintain adequate hydration.",
      "Follow respiratory etiquettes at all times.",
      "Frequent hand washing with soap and water for at least 40 seconds or clean with alcohol-based sanitizer.",
      "Don’t share personal items with other people in the household.",
      "Ensure cleaning of surfaces in the room that are touched often (tabletops, doorknobs, handles, etc.) with 1% hypochlorite solution.",
      "Monitor temperature daily.",
      "Monitor oxygen saturation with a pulse oximeter daily.",
      "Connect with the treating physician promptly if any deterioration of symptoms is noticed.",
    ],
    [
      "Mask: The caregiver should wear a triple layer medical mask. N95 mask may be considered when in the same room with the ill person.",
      "Hand hygiene: Hand hygiene must be ensured following contact with ill person or patient’s immediate environment.",
      "Exposure to patient/patient’s environment: Avoid direct contact with body fluids of the patient, particularly oral or respiratory secretions. Use disposable gloves while handling the patient. Perform hand hygiene before and after removing gloves.",
    ],
    [
      "Patients must be in communication with a treating physician and promptly report in case of any worsening.",
      "Continue the medications for other co-morbid illness after consulting the treating physician.",
      "Patients to follow symptomatic management for fever, running nose and cough, as warranted.",
      "Patients may perform warm water gargles or take steam inhalation twice a day.",
    ],
    [
      "Difficulty in breathing",
      "Dip in oxygen saturation (SpO2 < 94% on room air)",
      "Persistent pain/pressure in the chest",
      "Mental confusion or inability to arouse",
    ],
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
          'TREATMENT',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: CardOption(
                        'assets/images/virus1.png',
                        'Asymptomatic cases, mild cases of COVID-19',
                        Colors.green,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: CardOption(
                        'assets/images/helpline.png',
                        'Instructions for caregivers',
                        Colors.cyan,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: CardOption(
                        'assets/images/pre-3.png',
                        'Treatment for patients with mild/asymptomatic disease in home isolation',
                        Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: CardOption(
                        'assets/images/virus2.png',
                        'When to seek immediate medical attention',
                        Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data[index].length,
              itemBuilder: (ctx, i) {
                return Card(
                  color: clr[i % 3],
                  child: ListTile(
                    title: Text('${data[index][i]}'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardOption extends StatelessWidget {
  var img, txt, clr;
  CardOption(this.img, this.txt, this.clr);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Container(
      height: height * 0.25,
      child: Card(
        color: clr,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                '$img',
              ),
            ),
            Text(
              '$txt',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
