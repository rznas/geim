<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.UnloadAllAssetBundles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| unloadAllObjects | Determines whether the current instances of objects loaded from AssetBundles will also be unloaded. |

### Description

Unloads all currently loaded AssetBundles.

When `unloadAllObjects` is false, tracking data structures and any memory buffers holding content of the AssetBundle will be freed. But any instances of objects loaded from this bundle will remain intact.

When `unloadAllObjects` is true, all objects that were loaded from the currently loaded bundles will be destroyed as well. If there are GameObjects in your Scene referencing those assets, the references to them will become missing.

In either case you won't be able to load any more objects from the currently loaded bundles unless they are reloaded.

**Note:** Passing a value of `false` for `unloadAllObjects` can cause unexpected behavior in the Editor. For example, the Mip Map Streaming system might still reference textures loaded from a bundle after exiting play mode. This means when the Mip Map streaming system tries to update each texture's mipmaps, it can't access the unloaded bundle and displays errors in the console. To avoid this, use conditional compilation to pass `true` in the Editor, and `false` in builds. See AssetBundles compression for a description of the different compression formats used and their impact on memory while loaded.

Additional resources: Unload, UnloadAsync, Using AssetBundles Natively.
