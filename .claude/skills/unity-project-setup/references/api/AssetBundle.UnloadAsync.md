<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.UnloadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AssetBundleUnloadOperation** Asynchronous unload request for an AssetBundle.

### Description

Unloads assets in the bundle.

When `unloadAllLoadedObjects` is false, tracking data structures and any memory buffers holding content of the AssetBundle will be freed. But any instances of objects loaded from this bundle will remain intact.

When `unloadAllLoadedObjects` is true, all objects that were loaded from this bundle will be destroyed as well. If there are GameObjects in your Scene referencing those assets, the references to them will become missing.

After calling UnloadAsync on an AssetBundle, you cannot load any more objects from that bundle and other operations on the bundle will throw InvalidOperationException.

**Warning:** Unloading an asset bundle that serves as a dependency for other asset bundles still in use can lead to undefined behavior. This includes serialization errors that may occur even if the dependency asset bundle is later reloaded. To avoid such issues, ensure that an asset bundle and all asset bundles that depend on it are unloaded together.

Additional resources: UnloadAllAssetBundles, Unload, Using AssetBundles Natively.
