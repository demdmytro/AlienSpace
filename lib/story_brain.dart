import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story('My cryo capsule is broken. I have found myself laying in on the floor. My head is aching and I dont understand what is going on. I see other passangers in side cryo capsules, but they are asleep. Why am I awake? I need to go closer to my cryo capsule and check the date. I suddenly notice some blood signs on one of the capsules. There is a man inside. I try to stand on my feet', 'Go and check the date on the capsule', 'Go and check the blood signs on the glass'),
    Story('The main is the cryo capsule was dead. His stomach was thorn apart. His eyes were closed and he probably did not even understand what happened with him. I looke down at his cryo-capsule and saw a little hole. Seems like it was burned by some acid. There was a strange brown trace from the hole to the roof ventilation ', 'Follow the trace and check ventilation', 'I am enough. I go back to my capsule activate a cryo sleep'),
    Story('I have climbed up to the ventilation. Its dark out there but I dont hear anything as well. I think there is nothing...At this moment I heard something behind my back...', 'Go and check the source of sound', 'Open the ventilation go inside'),
    Story(
      'You have opened the ventilation and tried to get inside, but suddenly you saw a blink of sharp teeth... This was the last thing you saw',
      'Restart',
      '',
    ),
    Story(
      'You turned around went back to check what was that. Suddenlt, a snake like creature appeared behind the cryo capsule and attacked you. It smashed your had and started to eat your brain.',
      'Restart',
      '',
    ),
    Story(
      'You layed back in the cryo capsule. When you finished setting the cryo sleep mode, you saw a snake like alien crawling around the space room. It noticed you and got closer to your cryo capsule. You felt you are loosing counsciousness and falling asleep',
      'Restart',
      '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}
