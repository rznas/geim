<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.UnloadUnusedAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AsyncOperation** Object on which you can yield to wait until the operation completes.

### Description

Unloads assets that are not used.

An asset is deemed to be unused if it isn't reached after walking the whole game object hierarchy, including script components. Static variables are also examined.

The script execution stack, however, is **not** examined so an asset referenced only from within the script stack will be unloaded. All assets other than ScriptableObjects are loaded back in the next time one of its properties or methods is used. This requires extra care for assets which have been modified in memory. Make sure to call EditorUtility.SetDirty before an asset garbage collection is triggered.

Additional resources: EditorUtility.UnloadUnusedAssetsImmediate.
