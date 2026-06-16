<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an audio format containing information used for signal processing.

An AudioFormat provides information such as sample rate, speaker setup, and buffer size. It is used by types such as ControlContext and ProcessorInstance. 

Additional resources: AudioConfiguration

### Properties

| Property | Description |
| --- | --- |
| bufferFrameCount | The number of audio frames processed in each audio callback. |
| channelCount | The number of channels represented by the current speakerMode. |
| sampleRate | The sample rate this AudioFormat is configured to run at. |
| speakerMode | The speaker mode this AudioFormat is configured to run in. |

### Constructors

| Constructor | Description |
| --- | --- |
| AudioFormat | Initializes a new instance of AudioFormat using the provided AudioConfiguration. |
