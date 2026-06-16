<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.PhraseRecognizer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A common base class for both keyword recognizer and grammar recognizer.

Phrase recognizer is the smallest speech recognition unit that can be individually started and stopped. Typically, you should create all your phrase recognizers at the start of the Scene, and the start and stop them on demand as needed.

### Properties

| Property | Description |
| --- | --- |
| IsRunning | Tells whether the phrase recognizer is listening for phrases. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes the resources used by phrase recognizer. |
| Start | Makes the phrase recognizer start listening to phrases. |
| Stop | Stops the phrase recognizer from listening to phrases. |

### Events

| Event | Description |
| --- | --- |
| OnPhraseRecognized | Event that gets fired when the phrase recognizer recognizes a phrase. |

### Delegates

| Delegate | Description |
| --- | --- |
| PhraseRecognizedDelegate | Delegate for OnPhraseRecognized event. |
