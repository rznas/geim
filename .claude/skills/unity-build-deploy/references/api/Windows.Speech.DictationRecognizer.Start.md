<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.DictationRecognizer.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts the dictation recognization session. Dictation recognizer can only be started if PhraseRecognitionSystem is not running.

DictationRecognizer requires that dictation is permitted in the user's Speech privacy policy (Settings->Privacy->Speech, inking & typing). If dictation is not enabled, DictationRecognizer will fail on Start. Developers can handle this failure in an app-specific way by providing a DictationError delegate and testing for SPERR_SPEECH_PRIVACY_POLICY_NOT_ACCEPTED (0x80045509).
