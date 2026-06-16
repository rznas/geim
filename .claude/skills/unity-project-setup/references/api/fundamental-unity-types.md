<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/fundamental-unity-types.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Fundamental Unity types

Unity has some fundamental built-in classes that are particularly important for scripting. These are classes which your own custom types can inherit from to integrate with Editor and Engine functionality. It’s helpful to understand these types, their behavior, and why you should inherit from or use them.

For a complete reference of all the built-in classes and every member available, refer to the Script Reference.

| **Topic** | **Description** |
| --- | --- |
| **Object** | `UnityEngine.Object` is the base class for all objects the Editor can reference from fields in the **Inspector** window. |
| **MonoBehaviour** | Inherit from `MonoBehaviour` to make your script a component and control the behaviour of GameObjects and make them responsive to events. |
| **ScriptableObject** | Inherit from `ScriptableObject` to store data that’s independent of GameObjects. |
| **Unity attributes** | Use Unity-specific C# attributes to define special behavior for your code. |

## Additional resources

- Unity Scripting reference
