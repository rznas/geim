<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSampleRateSetting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The sample rate setting used within the AudioImporter. This defines the sample rate conversion of audio on import.

### Properties

| Property | Description |
| --- | --- |
| PreserveSampleRate | Do not change the sample rate of the imported audio file. The sample rate will be preserved for the imported AudioClip. |
| OptimizeSampleRate | Let Unity deduce the optimal sample rate for the AudioClip being imported. The audio file will be analysed and a minimal sample rate chosen while still preserving audio quality. |
| OverrideSampleRate | Override the sample rate of the imported audio file with a custom value. |
