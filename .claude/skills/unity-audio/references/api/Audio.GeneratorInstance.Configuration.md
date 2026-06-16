<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.Configuration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The configuration of a specific instance of a GeneratorInstance.

This is mainly self-reported from ICapabilities and the GeneratorInstance.IControl_1.Configure method.

### Properties

| Property | Description |
| --- | --- |
| isFinite | Declares whether this GeneratorInstance instance has a defined length and will eventually end. |
| isRealtime | Whether this GeneratorInstance instance must be treated as a source rendering in real time. |
| length | Declares the length in seconds of this GeneratorInstance instance, if known. |
| properties | Optional or additional metadata about the GeneratorInstance instance. |
| setup | Information on the audio setup of a GeneratorInstance instance, required to be provided to the instantiator in a GeneratorInstance.IControl_1.Configure call. |
