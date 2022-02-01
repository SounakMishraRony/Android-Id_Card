import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home:IdCard(),
));
class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar : AppBar(
        title: const Text('Sounak Id Card'),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sounak.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Sounak Mishra',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'ROLE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Android Developer',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
             Text(
              '$level',
              style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'sounak.mishra@outlook.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(width: 20.0),
                Icon(
                  Icons.phone_android,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  '(+91)-8455957420',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

