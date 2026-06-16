<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric.TimeInQueueMicroseconds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The amount of time the read request waited in the AsyncReadManager queue, in microseconds.

For read requests that were actively reading or had already finished when this metrics record was created, the time reported is the total time spent in the queue. For pending requests still waiting in the queue, the time reported is the time spent in the queue so far.
