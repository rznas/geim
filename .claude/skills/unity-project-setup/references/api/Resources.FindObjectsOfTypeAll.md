<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.FindObjectsOfTypeAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a list of all objects of Type `T`.

This function can return any type of Unity object that is loaded, including game objects, prefabs, materials, meshes, textures, etc. It will also list internal objects, therefore be careful with the way you handle the returned objects.

Contrary to Object.FindObjectsOfType this function will also list disabled objects.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    List<GameObject> GetAllObjectsOnlyInScene()
    {
        List<GameObject> objectsInScene = new List<GameObject>();        foreach (GameObject go in Resources.FindObjectsOfTypeAll(typeof(GameObject)) as GameObject[])
        {
            if (!EditorUtility.IsPersistent(go.transform.root.gameObject) && !(go.hideFlags == HideFlags.NotEditable || go.hideFlags == HideFlags.HideAndDontSave))
                objectsInScene.Add(go);
        }        return objectsInScene;
    }
}
```

This will return all GameObjects in the scene, in List<GameObject> format.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class ExampleScript : MonoBehaviour
{
    List<GameObject> GetNonSceneObjects()
    {
        List<GameObject> objectsInScene = new List<GameObject>();        foreach (GameObject go in Resources.FindObjectsOfTypeAll(typeof(GameObject)) as GameObject[])
        {
            if (EditorUtility.IsPersistent(go.transform.root.gameObject) && !(go.hideFlags == HideFlags.NotEditable || go.hideFlags == HideFlags.HideAndDontSave))
                objectsInScene.Add(go);
        }        return objectsInScene;
    }
}
```

This will return all GameObjects that are also Prefabs in the Resources folder.

### Description

Returns a list of all objects of Type `type`.

This function using non-generic types can return any type of Unity object that is loaded, including game objects, prefabs, materials, meshes, textures, etc. It will also list internal stuff, therefore be careful the way you handle the returned objects. Contrary to Object.FindObjectsOfType this function will also list disabled objects.

Note: that this function is very slow and is not recommended to be used every frame.

```csharp
using UnityEngine;
using UnityEditor;
using System.Collections.Generic;public class ExampleScript : MonoBehaviour
{
    List<UnityEngine.Object> GetSceneObjectsNonGeneric()
    {
        List<UnityEngine.Object> objectsInScene = new List<UnityEngine.Object>();        foreach (UnityEngine.Object go in Resources.FindObjectsOfTypeAll(typeof(UnityEngine.Object)) as UnityEngine.Object[])
        {
            GameObject cGO = go as GameObject;
            if (cGO != null && !EditorUtility.IsPersistent(cGO.transform.root.gameObject) && !(go.hideFlags == HideFlags.NotEditable || go.hideFlags == HideFlags.HideAndDontSave))
                objectsInScene.Add(go);
        }        return objectsInScene;
    }
}
```

Find all gameObjects in scene using non-generic methods.
