<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.GetDSPBufferSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bufferLength | Is the length of each buffer in the ring buffer. |
| numBuffers | Is number of buffers. |

### Description

Get the mixer's buffer size in samples.

The buffer size can be set from 'Project Settings -> Audio -> DSP Buffer size'.

The software mixer mixes to a ring buffer and the size of this ring buffer is determined here. It mixes a block of sound data every 'bufferLength' number of samples, and there are 'numBuffers' number of these blocks that make up the entire ring buffer. Adjusting these values can lead to extremely low latency performance (smaller values), or greater stability in sound output (larger values). The 'buffersize' is generally best left alone. Making the granularity smaller will just increase CPU usage (cache misses and DSP network overhead). Making it larger affects how often you hear commands update such as volume/pitch/pan changes. Anything above 20 ms will be noticeable and sound parameter changes will be obvious instead of smooth. Unity chooses the most optimal size by default for best stability, considering the output type and the drivers being used. It is not recommended changing this value unless you really need to. You may get worse performance than the default settings chosen by Unity.

Additional resources: Audio Settings.
