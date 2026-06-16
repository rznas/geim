<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.Unload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| unloadAllLoadedObjects | Determines whether the current instances of objects loaded from the AssetBundle will also be unloaded. |

### Description

Unloads an AssetBundle freeing its data.

When `unloadAllLoadedObjects` is false, tracking data structures and any memory buffers holding content of the AssetBundle are freed, but any instances of objects loaded from the bundle remain intact.

When `unloadAllLoadedObjects` is true, all objects that were loaded from the bundle are destroyed. If any GameObjects in a Scene reference the destroyed assets, these references become missing.

In either case no more objects can be loaded from from the bundle unless it is reloaded.

For example, if a Material `M` is loaded from AssetBundle `AB`:

- `AB.Unload(true)` destroys all instances of `M` referenced in the active scene.
- `AB.Unload(false)` keeps `M` instances in memory but detaches them from `AB`, causing duplicates if `AB` is reloaded.

**Warning:** Unloading an AssetBundle that serves as a dependency for other asset bundles still in use can lead to undefined behavior. This includes serialization errors that may occur even if the dependency AssetBundle is later reloaded. To avoid such issues, ensure that an AssetBundle and all AssetBundles that depend on it are unloaded together.

For more information on the different compression formats used and their impact on memory while loaded, refer to AssetBundle compression formats .

Additional resources: UnloadAllAssetBundles, UnloadAsync, Using AssetBundles Natively.
