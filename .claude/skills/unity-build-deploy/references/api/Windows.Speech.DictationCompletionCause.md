<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.DictationCompletionCause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the reason why dictation session has completed.

### Properties

| Property | Description |
| --- | --- |
| Complete | Dictation session has completed successfully. |
| AudioQualityFailure | Dictation session completion was caused by bad audio quality. |
| Canceled | Dictation session was either cancelled, or the application was paused while dictation session was in progress. |
| TimeoutExceeded | Dictation session has reached its timeout. |
| NetworkFailure | Dictation session has finished because network connection was not available. |
| MicrophoneUnavailable | Dictation session has finished because a microphone was not available. |
| UnknownError | Dictation session has completed due to an unknown error. |
