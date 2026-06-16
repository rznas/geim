<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ChannelBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a multi-channel audio buffer, allowing channel/frame-based access to the audio samples.

A ChannelBuffer provides a uniform interface for audio processing code regardless of how the samples are stored, internally. When using such a buffer together with Unity APIs, Unity will interpret the buffer layout as get/set through the indexer.

### Properties

| Property | Description |
| --- | --- |
| channelCount | Gets the number of audio channels represented in the buffer. |
| frameCount | Gets the number of frame indices available in the buffer. |
| this[int,int] | Gets or sets the sample value at the specified channel and frame. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChannelBuffer | Creates a new ChannelBuffer instance using the as a backing memory store. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Sets all samples in the buffer to zero. |
