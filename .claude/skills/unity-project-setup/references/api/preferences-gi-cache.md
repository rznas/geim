<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-gi-cache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# GI Cache preferences reference

The Global Illumination (GI) system uses a cache on each computer to store intermediate files used to pre-compute real-time Global Illumination. All projects on the computer share the cache. To open the preferences, go to **Edit > Preferences > GI Cache** (macOS: **Unity > Settings > GI Cache**).

| **Property** | **Function** |
| --- | --- |
| **Maximum Cache Size (GB)** | Use the slider to set the maximum GI cache folder size. Unity keeps the GI cache folder size below this number whenever possible. Unity periodically deletes unused files to create more space (deleting the oldest files first). This is an automatic process, and doesn’t require you to do anything.  **Note:** If the current Scene is using all the files in the GI cache, increase your cache size. Otherwise, resource-intensive recomputation occurs when baking. This can happen when the Scene is large or the cache size is too small. |
| **Custom cache location** | Enable this option to allow a custom location for the GI cache folder. By default, the GI cache is stored in the *Caches* folder. All Projects share the cache folder. **Tip:** Storing the GI Cache on an SSD drive can speed up baking in cases where the baking process is I/O bound. |
| **Cache Folder Location** | Click the **Browse** button to specify a location for the cache. |
| **Cache compression** | This option enables Unity to compress datafiles in the GI cache to use less hard drive space. The datafiles are LZ4-compressed by default, and the naming scheme is a hash and a file extension. Unity computes the hashes based on the inputs to the lighting system, so changing any of the following settings, properties or assets can lead to lighting recomputation: - Materials (Textures, Albedo, Emission) - Lights - Geometry - Static flags - Light Probe groups - Reflection probes - Lightmap Parameters **Tip:** If you need to access the raw Enlighten Realtime Global Illumination data, disable Cache Compression and clear the cache. |
| **Clean Cache** | Use this button to clear the cache directory.  It’s not safe to delete the GI Cache directory manually while the Editor is running. This is because the Editor creates the *GiCache* folder when it starts and maintains a set of references to those files. The **Clean Cache** button ensures that the Editor releases all references to the files on disk before they’re deleted. |
| **Cache size is** | Displays the current size of the cache. |
| **Cache Folder Location** | Displays the current cache folder location. |

## Additional resources

- Project Settings reference
- Update lightmaps at runtime with Enlighten Realtime Global Illumination
