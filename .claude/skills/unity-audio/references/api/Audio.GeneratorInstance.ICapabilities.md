<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.ICapabilities.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the runtime behaviour of the GeneratorInstance. These reported values are cached in the beginning and assumed to not change.

This must be implemented identically on both the asset / component / offline version in IAudioGenerator and the runtime instance IRealtime. This is so that offline tooling and asset management can reason about the content in advance, and the engine identically so without depending on loading each other.

### Properties

| Property | Description |
| --- | --- |
| isFinite | Return true if this GeneratorInstance is finite, meaning it has a defined length and will terminate eventually. |
| isRealtime | Declare whether this GeneratorInstance must be treated as a source rendering in real time. Realtime generators must be processed at the same sampling rate and buffer size as the system they run in. |
| length | If you know your length in advance, you should set it here. Otherwise it's assumed to end at some point in the future, if isFinite is set to true. |
