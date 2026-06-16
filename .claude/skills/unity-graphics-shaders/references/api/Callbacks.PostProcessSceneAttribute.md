<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.PostProcessSceneAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this attribute to a method to get a notification just after building the Scene.

A method with this attribute will also get called when entering Playmode, when SceneManager.LoadScene is called.

 `PostProcessSceneAttribute` has an option to provide an order index in the callback, starting at 0. This is useful if you have more than one OnPostprocessScene callback, and you would like them to be called in a certain order. Callbacks are called in order, starting at zero.

 **Note:** If there are no new changes to the scene since the previous Player build, Unity doesn't rebuild the scene but uses cached Player data instead. In this case the `PostProcessSceneAttribute` callback is not called. To ensure an unchanged scene rebuilds, you can either modify the scene or clear the build cache with BuildOptions.CleanBuildCache. Using EditorSceneManager.MarkSceneDirty alone is not sufficient to trigger the callback.

 Additional resources: IProcessSceneWithReport, Incremental Build Pipeline

```csharp
// C# example:
// Automatically creates a game object with a primitive mesh renderer and appropriate collider.
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;public class MyScenePostprocessor {
    [PostProcessSceneAttribute (2)]
    public static void OnPostprocessScene() {
        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        cube.transform.position = new Vector3(0.0f, 0.5f, 0.0f);
    }
}
```

### Inherited Members
