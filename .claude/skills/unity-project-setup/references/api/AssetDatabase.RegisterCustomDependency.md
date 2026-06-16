<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RegisterCustomDependency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dependency | Name of dependency. You can use any name you like, but because these names are global across all your Assets, it can be useful to use a naming convention (eg a path-based naming system) to avoid clashes with other custom dependency names. |
| hashOfValue | A Hash128 value of the dependency. |

### Description

Allows you to register a custom dependency that Assets can be dependent on. If you register a custom dependency, and specify that an Asset is dependent on it, then the Asset will get re-imported if the custom dependency changes.

If an asset has a dependency to a custom dependency and the hash value of the custom dependency is changed, then the asset will get reimported. You can change the hash by calling RegisterCustomDependency again, and passing the same name, and a new value for the hash.

 The reimport happens when either AssetDatabase.Refresh is called or it imported using AssetDatabase.ImportAsset().

 For an example for how to use custom dependencies goto AssetImportContext.DependsOnCustomDependency

 **Exception**
 You should not call RegisterCustomDependency from any code that is executed during the Asset import process. If you do, this method will throw an exception.
