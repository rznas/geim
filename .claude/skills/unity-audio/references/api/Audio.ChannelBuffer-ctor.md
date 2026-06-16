<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ChannelBuffer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buffer | A span of floats that will work as the backing buffer. |
| channels | The number of audio channels in the buffer |

### Description

Creates a new ChannelBuffer instance using the as a backing memory store.

Setting content using [[this[int, int]]] will be reflected if another ChannelBuffer is created and the same indices are being read back. No other guarantees are given with respect to layout / packing.
