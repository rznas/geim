<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.PhraseRecognitionSystem.OnError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Delegate that will be invoked when the event occurs. |

### Description

Event that gets invoked when phrase recognition system encounters an error.

If any errors occurred due to issues the user can fix (e.g. the microphone being unavailable), you should tell the user to correct the issue. In this example, you should show a message asking the user to reconnect the microphone and then attempt to restart the phrase recognition system.
