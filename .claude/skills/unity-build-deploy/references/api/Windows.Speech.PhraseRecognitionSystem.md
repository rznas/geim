<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.PhraseRecognitionSystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Phrase recognition system is responsible for managing phrase recognizers and dispatching recognition events to them.

In order for any phrase recognizers to recognize a phrase, PhraseRecognitionSystem must be running. Starting a phrase recognition will automatically start the phrase recognition system if it's stopped.

Phrase recognition system cannot be started if there are any dictation recognizers active.

Phrase recognition system is currently only functional on Windows 10. Use PhraseRecognitionSystem.isSupported property to determine whether speech recognition is supported on the system that the application is running on.

### Static Properties

| Property | Description |
| --- | --- |
| isSupported | Returns whether speech recognition is supported on the machine that the application is running on. |
| Status | Returns the current status of the phrase recognition system. |

### Static Methods

| Method | Description |
| --- | --- |
| Restart | Attempts to restart the phrase recognition system. |
| Shutdown | Shuts phrase recognition system down. |

### Events

| Event | Description |
| --- | --- |
| OnError | Event that gets invoked when phrase recognition system encounters an error. |
| OnStatusChanged | Event which occurs when the status of the phrase recognition system changes. |

### Delegates

| Delegate | Description |
| --- | --- |
| ErrorDelegate | Delegate for OnError event. |
| StatusDelegate | Delegate for OnStatusChanged event. |
