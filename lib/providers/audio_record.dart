import 'package:flutter/material.dart';
import 'package:troubling/pages/recording_page.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';


enum AudioState { recording, stop, play }

const veryDarkBlue = Color(0xff172133);
const kindaDarkBlue = Color(0xff202641);

class RecordingScreen extends StatefulWidget {
  @override
  _RecordingScreenState createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  AudioState audioState = AudioState.stop;

  void handleAudioState() {
    setState(() {
      if (audioState == AudioState.stop) {
        audioState = AudioState.recording;  // Starts recording
      } else if (audioState == AudioState.recording) {
        audioState = AudioState.play;  // Changes state to play
      } else if (audioState == AudioState.play) {
        audioState = AudioState.stop;  // Stops recording or playing
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (audioState == AudioState.stop) {
          // Update state to recording before navigating
          setState(() {
            audioState = AudioState.recording;
          });
          //Navigate to the body_record(component) page
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RecordingPage()),
          );
          // After coming back from the recording page, update the state
          setState(() {
            audioState = AudioState.stop;  // Reset to stop after recording
          });
        } else if (audioState == AudioState.recording) {
          // If already recording, you could add stop recording logic here
          handleAudioState();
        } else if (audioState == AudioState.play) {
          // Handle play logic here (if applicable)
          handleAudioState();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: audioState == AudioState.stop
            ? AppColors.primaryDarkButton
            : AppColors.primaryLight,  // Different button colors based on state
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 22,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), 
        ),
      ),
      child: Text(
        audioState == AudioState.stop
            ? '녹음하기'  // 'Start Recording' when stopped
            : (audioState == AudioState.recording
                ? '녹음중...'  // 'Recording...' when recording
                : '녹음 재생'),  // 'Play Recording' when playing
        style: AppFonts.button,
      ),
    );
  }
}
