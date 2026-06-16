<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.SetGameObjectsActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceIDs | Instance IDs of GameObjects to activate or deactive. |
| active | The active state to set, where `true` sets the GameObjects to active and `false` sets them to inactive. |

### Description

Activates or deactivates multiple GameObjects identified by instance ID.

Use `SetGameObjectsActive` to activate or deactivate multiple GameObjects as a batch.

```csharp
using System;
using Unity.Collections;
using UnityEngine;
using UnityEngine.InputSystem;//Add this script to a GameObject. This example requires the Input System package.public class DeactivateGOComponent : MonoBehaviour
{
public GameObject prefab;
public int count = 100;    NativeArray<int> m_SpawnedInstanceIDsNative;
    int[] m_SpawnedInstanceIDs;
    
    bool m_SetActive = false;
    bool m_UseSlowMethod = false;
    
    void Start()
    {
        m_SpawnedInstanceIDs = new int[count];
        
        //Spawn some prefabs 
        for (int i = 0; i < count; i++)
        {
            //Save their instanceID
            m_SpawnedInstanceIDs[i] = Instantiate(prefab).GetInstanceID();
        }
        
        //Create native array with instanceIDs
        m_SpawnedInstanceIDsNative = new NativeArray<int>(m_SpawnedInstanceIDs, Allocator.Persistent);
        
    }    void Update()
    {
        if (Keyboard.current[Key.A].wasPressedThisFrame)
        {
            if (m_UseSlowMethod)
            {
                SetActiveSlow(m_SetActive);
            }
            else
            {
                SetActiveFast(m_SpawnedInstanceIDsNative, m_SetActive);
                
            }
            m_SetActive = !m_SetActive; 
        }
    }
    
    void SetActiveSlow(bool setActive)
    {
        foreach(int id in m_SpawnedInstanceIDs)
        {
            ((GameObject)Resources.InstanceIDToObject(id)).SetActive(setActive);
        }
    }
    
    static void SetActiveFast(NativeArray<int> ids, bool setActive)
    {
        GameObject.SetGameObjectsActive(ids, setActive);
    }    void OnDestroy()
    {
        m_SpawnedInstanceIDsNative.Dispose();
    }
}
```

Additional resources: GameObject.SetActive, GameObject.InstantiateGameObjects.
