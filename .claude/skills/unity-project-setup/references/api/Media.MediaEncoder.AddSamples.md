<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.MediaEncoder.AddSamples.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| trackIndex | Index of the track to which sample frames will be added. |
| interleavedSamples | Sample frames to add. Samples are expected to be interleaved. |

### Returns

**bool** True if the operation succeeded. False otherwise.

### Description

Appends sample frames to the specified audio track.

Keep the number of video frames and audio samples aligned so that each track is syncrhonized as much as possible. For instance, a file with 30FPS video and 48KHz video, each addition of one video frame should be followed by the addition of a buffer of 1600 sample frames.
