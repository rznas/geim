<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SetMaximumPreMappedBufferCounts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertexBuffersCount | The maximum number of cached vertex buffers. |
| indexBuffersCount | The maximum number of cached index buffers. |

### Description

Limits the amount of graphics memory Unity reserves for efficient rendering of Particle Systems.

To efficiently write particle data into graphics memory, Unity uses a pool of pre-allocated vertex buffers. When rendering a large number of particles, this pool will increase in size. If the number of particles decreases later, the pool still maintains this size.

 Maintaining a large pool can make future rendering more efficient, in situations where a large number of particles are being rendered, and the pool is already pre-sized appropriately. However, a large pool uses more memory, so this function allows you to set a limit on the number of buffers in the cache.

 If the total number of visible particles reaches the limit, Unity allocates new buffers and releases them on-demand within the frames that need them, rather than saving them for re-use on multiple frames. This can be slower but prevents the cache from using too much memory.

 Modern graphics APIs, such as DirectX12, Vulkan and Metal, do not use a pre-allocated pool of vertex buffers, because they can operate efficiently without it. This method does nothing on these devices.
