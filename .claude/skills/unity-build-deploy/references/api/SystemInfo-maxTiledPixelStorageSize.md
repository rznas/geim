<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxTiledPixelStorageSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the maximum per-pixel storage size in bytes for Multiple Render Targets (MRT) in tile or render target memory on the current platform.

Each GPU architecture has a limit on the amount of memory that can be allocated per pixel when multiple render targets are bound in a render pass. This limit determines the maximum combined storage size of all active render target formats for a given pixel. Many mobile devices use tile-based rendering GPUs, which cache render target data in tile memory during a render pass. The combined size of all render target pixel formats must fit within this per-pixel budget. For example, iOS GPU Family 1 supports up to 16 bytes per pixel, while iOS GPU Families 2 and 3 support up to 32 bytes per pixel.
