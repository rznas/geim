<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.Speech.KeywordRecognizer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keywords | The keywords that the recognizer will listen to. |
| minimumConfidence | The minimum confidence level of speech recognition that the recognizer will accept. |

### Description

Create a KeywordRecognizer which listens to specified keywords with the specified minimum confidence. Phrases under the specified minimum level will be ignored.

If no minimum confidence level is specified, then the confidence level is assumed to be Medium.
