<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.ICapabilities-isRealtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declare whether this GeneratorInstance must be treated as a source rendering in real time. Realtime generators must be processed at the same sampling rate and buffer size as the system they run in.

Realtime GeneratorInstances shall return the same output every time they are processed. Additionally, the system enforces the buffer size of the passed-in ChannelBuffer equals the length of the AudioFormat.bufferSize that the ControlContext runs in.

 Use cases include hardware devices that cannot be rendered at arbitrary rate, or systematic graphs that render ahead of time. If you are not sure whether your GeneratorInstance is realtime or not, you should set this to false. 

Additional resources: GeneratorInstance.IControl_1.Configure
