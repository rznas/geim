<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-sceneCullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Scene culling mask defined for the GameObject. (Read Only)

Unity uses SceneCullingMasks to determine which scene to render the GameObject in. The `sceneCullingMask` is a bitfield stored as an unsigned 64-bit integer [ulong](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/integral-numeric-types). Cameras only render an object in a scene if the bits set on the Scene's mask (retrievable withEditorSceneManager.GetSceneCullingMask) match those in the object's `sceneCullingMask`.

```csharp
using UnityEngine;
using UnityEditor.SceneManagement;[ExecuteInEditMode]
public class ExampleClass : MonoBehaviour
{
    
    void Start()
    {
        //Check if gameObject is visible in scene
        if(gameObject.sceneCullingMask == EditorSceneManager.GetSceneCullingMask(gameObject.scene))
        {
            Debug.Log("Object is visible");
        }
        else
        {
            Debug.Log("Object is not visible");
        }
    }
}
```

Additional resources: SceneCullingMasks, Camera.overrideSceneCullingMask, EditorSceneManager.SetSceneCullingMask
