<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.Result.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The result returned from a IRealtime.Process call.

This primarily contains the amount of frames actually written into the passed-in ChannelBuffer. 

Additional resources: RealtimeContext.Process

### Properties

| Property | Description |
| --- | --- |
| processedFrames | Number of frames processed by the GeneratorInstance in RealtimeContext.Process. |

### Operators

| Operator | Description |
| --- | --- |
| Result | Creates a new GeneratorInstance.Result from a number of frames processed. |
