<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Resolve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to resolve. |
| resolveMethod | How the assets should be resolved. |

### Description

Starts a task that will resolve the conflicting assets in version control.

When conflicts between the depot and the local version of the asset appear you can resolve them by keeping either your own copy or the incoming copy.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/ResolveUseTheirs")]
    public static void ExampleResolve()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.Resolve(assets, ResolveMethod.UseTheirs);
        t.Wait();
    }
}
```

The code above will resolve the "ExampleAsset.cs" file's conflict by discarding local changes and only keeping the incoming ones.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/ResolveUseMerged")]
    public static void ExampleResolve()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t1 = Provider.Merge(assets);
        t1.Wait();
        Task t2 = Provider.Resolve(assets, ResolveMethod.UseMerged);
        t2.Wait();
    }
}
```

The code above shows a third way of resolving the conflict - merging the two versions together. The correct way to do this is to first, call the Provider.Merge task on the conflicting assets and then resolve them using the Provider.Resolve task with the ResolveMethod.UseMerged method.
