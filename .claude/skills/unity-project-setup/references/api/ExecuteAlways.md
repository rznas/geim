<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExecuteAlways.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes a MonoBehaviour-derived class to execute in Edit mode and prefab editing mode in addition to at runtime.

By default, MonoBehaviour event functions only execute at runtime. Applying `ExecuteAlways` to a MonoBehaviour-derived class causes the event functions for any instance of that class to also execute in Edit mode and Prefab mode.

This attribute targets classes, but it only has an effect on classes that inherit from MonoBehaviour.

Use the `[ExecuteAlways]` attribute when you want your script to perform actions or respond to events at authoring time, which are not necessarily related to what happens at application runtime in the Editor's Play mode or a standalone Player. Sometimes the runtime functionality of such a script is identical to its Edit mode functionality, while other times they differ greatly.

It's important to ensure that a MonoBehaviour script using this attribute does not have runtime code which could incorrectly execute and modify the parent GameObject while it's being edited in Edit mode or prefab editing mode. To avoid this, you can put your runtime code inside a conditional block that only runs if Application.IsPlaying is `true` for the script's own parent GameObject, as shown in the following code example.

If your script makes use of static variables or Singleton patterns, you should ensure that instances of the script that belong to the playing world and instances that don't will not accidentally affect each other through those variables or Singletons.

In Edit mode, event functions are not called as frequently or under all the same conditions as they are at runtime. Event functions are called under the following conditions:

- Awake is called only when a new instance of the script component is created. This happens when Unity loads a scene that contains the component or when you create a new component in the Editor, for example through the **Component** menu.
- Update is called on every redraw of the **Scene** view or **Game** view. This hapens when something in the scene changes, for example, the position of a GameObject or when you navigate the scene with the mouse or keys.
- OnGUI is called when the **Game** view receives a non-Editor-only Event that it doesn't use and doesn't forward to the Editor's keyboard shortcut system. For example, `OnGUI` is called on receiving an instance of EventType.ScrollWheel that's not forwarded to EventType.KeyDown or EventType.KeyUp. Events forwarded to the **Game** view are added to a queue and aren't guaranteed to be processed immediately.
- OnRenderObject and the other rendering callback functions are called on every redraw of the **Scene** view or **Game** view.

See Also: Application.IsPlaying, runInEditMode, EditorApplication.QueuePlayerLoopUpdate.

```csharp
using UnityEngine;[ExecuteAlways]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        if (Application.IsPlaying(gameObject))
        {
            // Play logic
        }
        else
        {
            // Editor logic
        }
    }
}
```
