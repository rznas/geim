<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.Pipe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A bi-directional communication system typically between two logical threads.

One thread is referred to as "control" (main thread typically) and one as "realtime" (audio thread typically). Using ControlContext and RealtimeContext as keys to the APIs, you can read data the other thread sent you or send data back.

### Public Methods

| Method | Description |
| --- | --- |
| GetAvailableData | Access an enumerator to the currently available data. |
| SendData | Send data from IRealtime to IControl_1 or vice versa. |
