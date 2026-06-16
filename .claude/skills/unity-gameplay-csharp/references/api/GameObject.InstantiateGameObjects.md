<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.InstantiateGameObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceInstanceID | The instance ID of the GameObject to create additional instances of. |
| count | The number of instances of the GameObject to create. |
| newInstanceIDs | Pre-allocated NativeArray to populate with the instance IDs of the new GameObjects. Must be the same size as `count`. |
| newTransformInstanceIDs | Pre-allocated NativeArray to populate with the instance IDs of the Transforms of the new GameObjects. Must be the same size as `count`. |
| destinationScene | The Scene to place the instantiated GameObjects into. If default, then the GameObjects will be added to the currently active Scene. |

### Description

Creates a specified number of instances of a GameObject identified by its instance ID and populates NativeArrays with the instance IDs of the new GameObjects and their Transform components.

Use `InstantiateGameObjects` to instantiate multiple GameObjects as a batch. An instance ID can be resolved to an object using Resources.InstanceIDToObject.

```csharp
using System;
using Unity.Collections;
using UnityEngine;public class InstantiateInstanceID : MonoBehaviour
{
public GameObject prefab;
public int count = 100;    int m_InstanceID;
    NativeArray<int> m_InstanceIds;
    NativeArray<int> m_TransformIds;
    
    void Start()
    {
        m_InstanceID = prefab.GetInstanceID();
        m_InstanceIds = new NativeArray<int>(count, Allocator.Persistent);
        m_TransformIds = new NativeArray<int>(count, Allocator.Persistent);
        
        GameObject.InstantiateGameObjects(m_InstanceID, count, m_InstanceIds,m_TransformIds );
    }    void OnDestroy()
    {
        m_InstanceIds.Dispose();
        m_TransformIds.Dispose();
    }
}
```

Additional resources: GameObject.SetGameObjectsActive, Resources.InstanceIDToObject
