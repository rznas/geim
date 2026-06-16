<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.DictationRecognizer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| minimumConfidence | The confidence level at which the recognizer will begin accepting phrases. |
| topic | The dictation topic that this dictation recognizer should optimize its recognition for. |

### Description

Create a DictationRecognizer with the specified minimum confidence and dictation topic constraint. Phrases under the specified minimum level will be ignored.

Default confidence level is Medium. Default dictation topic constraint is Dictation.
