import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(AlienSpace());

class AlienSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
          decoration: (BoxDecoration(
            image: DecorationImage(image: AssetImage('images/ship1.jpeg'), fit: BoxFit.cover),
          )),
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 15.0,
          ),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Center(
                      child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    color: Colors.redAccent,
                    child: Text(
                      storyBrain.getChoice1(),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Visibility(
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          storyBrain.getChoice2(),
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
