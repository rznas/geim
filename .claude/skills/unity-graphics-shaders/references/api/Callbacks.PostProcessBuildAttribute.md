<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.PostProcessBuildAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this attribute to a method to get a notification just after building the player.

```csharp
// C# example:
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;public class MyBuildPostprocessor {
    [PostProcessBuildAttribute(1)]
    public static void OnPostprocessBuild(BuildTarget target, string pathToBuiltProject) {
        Debug.Log( pathToBuiltProject );
        }
}
```

PostProcessBuildAttribute has an option to provide an order index in the callback, starting at 0. This is useful if you have more than one PostProcessBuildAttribute callback, and you would like them to be called in a certain order. Callbacks are called in order, starting at zero. 
 
 Additional resources: IPostprocessBuildWithContext

### Inherited Members
