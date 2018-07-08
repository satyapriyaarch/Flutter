import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return new MaterialApp(
      title: 'First App',
      theme: new ThemeData(

        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Words"),
        ),
        body: RandomWords(),

      ),
    );
  }
}

class RandomWords extends StatefulWidget
{
  @override
  createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>
{
  final _listOfWords = <WordPair>[];
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildWords()
  {
    return ListView.builder(
        padding: const EdgeInsets.all(18.0),

        itemBuilder: (context,i){

            if (i.isOdd) return Divider();

            final index = i ~/ 2;
            if(index >= _listOfWords.length)
              {
                _listOfWords.addAll(generateWordPairs().take(10));
              }

        return _buildRow(_listOfWords[index]);

        }




    );
  }
  Widget _buildRow(WordPair wordPair)
  {
    final alreadySaved = _saved.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _biggerFont,

      ),

      trailing: Icon(

        alreadySaved? Icons.favorite : Icons.favorite_border,
        color: alreadySaved? Colors.red : Colors.white,


      ),
      onTap: (){
        setState(() {
          alreadySaved ? _saved.remove(wordPair) : _saved.add(wordPair) ;
        });
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //final randomWord = WordPair.random();

    //return Text(randomWord.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text("Built Words"),
        
      ),

      body: _buildWords(),

    );

  }


}





