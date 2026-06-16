<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.FindAllInstancesOfPrefab.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefabRoot | The root GameObject of a Prefab asset. |
| scene | The scene to search for Prefab instances. The scene you specify must be valid and loaded. |

### Returns

**GameObject[]** The root GameObjects for all instances of the Prefab asset with root `prefabRoot`.

### Description

Retrieves the root GameObjects for all instances of the Prefab asset with root `prefabRoot` found in all currently loaded scenes. If `prefabRoot` is not a valid Prefab asset root GameObject, an `ArgumentException` is thrown.

FindAllInstancesOfPrefab will not return nested Prefab instances.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using NUnit.Framework;public class Example : MonoBehaviour
{
    public GameObject prefabAssetRoot;
    private void Start()
    {
        var expectedInstance = (GameObject)PrefabUtility.InstantiatePrefab(prefabAssetRoot);
        var instances = PrefabUtility.FindAllInstancesOfPrefab(prefabAssetRoot);
        Assert.AreEqual(1, instances.Length);
        Assert.AreEqual(expectedInstance, instances[0]);
    }
}
```

### Description

Returns the root GameObjects for all instances of the Prefab asset with root `prefabRoot` found in `scene`. If `prefabRoot` is not a valid Prefab asset root GameObject, or `scene` is not valid and loaded, `ArgumentException` is thrown.

FindAllInstancesOfPrefab will not return nested Prefab instances.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using NUnit.Framework;public class Example : MonoBehaviour
{
    public GameObject prefabAssetRoot;
    private void Start()
    {
        var expectedInstance = (GameObject)PrefabUtility.InstantiatePrefab(prefabAssetRoot);
        var instances = PrefabUtility.FindAllInstancesOfPrefab(prefabAssetRoot, SceneManager.GetActiveScene());
        Assert.AreEqual(1, instances.Length);
        Assert.AreEqual(expectedInstance, instances[0]);
    }
}
```
