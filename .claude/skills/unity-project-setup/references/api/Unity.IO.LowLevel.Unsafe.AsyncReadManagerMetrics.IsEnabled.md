<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.IsEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True, if the metrics system of the AsyncReadManager is currently recording data; false, otherwise.

### Description

Reports whether the metrics system for the AsyncReadManager is currently recording data.

Start metrics collection with StartCollectingMetrics and end recording with StopCollectingMetrics. You can also enable metrics collection when your program first launches using the command-line argument "-enable-file-read-metrics". You can only collect metrics in development builds.
