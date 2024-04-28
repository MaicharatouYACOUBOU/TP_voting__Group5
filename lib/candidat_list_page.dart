// candidat_list_page.dart
import 'package:flutter/material.dart';
import 'candidat.dart';
import 'add_candidat_page.dart';

class CandidateListPage extends StatefulWidget {
  @override
  _CandidateListPageState createState() => _CandidateListPageState();
}

class _CandidateListPageState extends State<CandidateListPage> {
  List<Candidat> candidates = [
    Candidat(
      name: 'TOURE',
      firstName: 'Malick',
      sex: 'Male',
      party: 'Party OGC',
      description: 'pied de page, de page de garde et de zone de texte qui se complètent mutuellement. Vous pouvez pas exemple ajouter une page de garde, un en-tête et une barre latérale identiquespied de page, de page de garde et de zone de texte qui se complètent mutuellement. Vous pouvez pas exemple ajouter une page de garde, un en-tête et une barre latérale identiques',
      photo: 'https://www.google.com/imgres?q=politiciens%20b%C3%A9ninois&imgurl=https%3A%2F%2Flanouvelletribune.info%2Fwp-content%2Fuploads%2F2017%2F06%2F52067291960_09cd9beb43_k.jpg&imgrefurl=https%3A%2F%2Flanouvelletribune.info%2F2023%2F10%2Fbenin-un-acteur-devant-la-justice-pour-avoir-suscite-la-candidature-de-wadagni%2F&docid=F9mOYUt60tABEM&tbnid=jwxBEM0BXmRceM&vet=12ahUKEwjn2u7mnuCFAxXd9wIHHfFhBAUQM3oECF4QAA..i&w=1200&h=675&hcb=2&ved=2ahUKEwjn2u7mnuCFAxXd9wIHHfFhBAUQM3oECF4QAA',
    ),
    Candidat(
      name: 'MADOUGOU',
      firstName: 'Réckiath',
      sex: 'Female',
      party: 'Party PGC',
      description: 'pied de page, de page de garde et de zone de texte qui se complètent mutuellement. Vous pouvez pas exemple ajouter une page de garde, un en-tête et une barre latérale identiques',
      photo: 'https://www.pinterest.fr/pin/1035335401819475372/',
    ),
    Candidat(
      name: 'TOGBEDJI',
      firstName: 'Françoise',
      sex: 'Female',
      party: 'Party PVT',
      description: 'pied de page, de page de garde et de zone de texte qui se complètent mutuellement. Vous pouvez pas exemple ajouter une page de garde, un en-tête et une barre latérale identiques',

      photo: 'https://www.pinterest.fr/pin/43839796368178665/',
    ),
    Candidat(
      name: 'YAYA',
      firstName: 'Cérrafine',
      sex: 'Female',
      party: 'Party NDD',
      description: 'pied de page, de page de garde et de zone de texte qui se complètent mutuellement. Vous pouvez pas exemple ajouter une page de garde, un en-tête et une barre latérale identiques',
      photo: 'https://www.pinterest.fr/pin/709528116318292576/',
    ),
  ];
   bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 32),
            Text(
              'Élections présidentielles',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.notifications, color: Colors.black),
                if (hasNotification)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(width: 32),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Présidentielle', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Governement'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('KKEB'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Candidats',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${candidates.length} Candidats',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: candidates.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                  image: AssetImage(candidates[index].photo),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${candidates[index].firstName} ${candidates[index].name}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    candidates[index].description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  if (candidates[index].description.length > 200)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text('${candidates[index].firstName} ${candidates[index].name}'),
                                                  content: SingleChildScrollView(
                                                    child: Text(candidates[index].description),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: Text('Fermer'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Text('Read More', style: TextStyle(fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCandidatPage(),
            ),
          ).then((newCandidat) {
            if (newCandidat != null) {
              setState(() {
                candidates.add(newCandidat);
               });
            }
          });
        },
      ),
    );
  }
}