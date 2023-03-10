import "package:flutter/material.dart";

class Kutipan extends StatelessWidget {
  const Kutipan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kutipan"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('"Cinta emang buta, tapi cinta tau mana Honda BRIO mana Honda Vario"',
                    style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
          ),
        TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 102, 255),
                elevation: 0,
          ),
                child: Text('Back',
                style: TextStyle(
                  color: Colors.white,),))
              
        ],
      ),
    );
}
}