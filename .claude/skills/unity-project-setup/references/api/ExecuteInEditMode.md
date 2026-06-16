<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExecuteInEditMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes a MonoBehaviour-derived class to execute in Edit mode in addition to at runtime.

By default, MonoBehaviour event functions only execute at runtime. Applying `ExecuteInEditMode` to a MonoBehaviour-derived class causes the event functions for any instance of that class to also execute in Edit mode.

This attribute targets classes, but it only has an effect on classes that inherit from MonoBehaviour.

This attribute is not recommended because it is not compatible with editing in prefab editing mode. The recommended alternative is ExecuteAlways.

If you're editing a prefab containing a MonoBehaviour with the `ExecuteInEditMode` attribute in prefab editing mode and you then enter Play mode, Unity exits prefab editing mode to prevent accidental modification to the prefab caused by logic intended for Play mode only.

To keep prefab editing mode open while in Play mode, use the ExecuteAlways attribute instead. If you do this, you must take care to ensure your runtime MonoBehaviour code does not modify the prefab you're editing in ways intended to occur only during gameplay. For more details, refer to ExecuteAlways.

In Edit mode, event functions are not called as frequently or under all the same conditions as they are at runtime. Event functions are called under the following conditions:

- Awake is called only when a new instance of the script component is created. This happens when Unity loads a scene that contains the component or when you create a new component in the Editor, for example through the **Component** menu.
- Update is called on every redraw of the **Scene** view or **Game** view. This happens when something in the scene changes, for example, the position of a GameObject or when you navigate the scene with the mouse or keys.
- OnGUI is called when the **Game** view receives a non-Editor-only Event that it doesn't use and doesn't forward to the Editor's keyboard shortcut system. For example, `OnGUI` is called on receiving an instance of EventType.ScrollWheel that's not forwarded to EventType.KeyDown or EventType.KeyUp. Events forwarded to the **Game** view are added to a queue and aren't guaranteed to be processed immediately.
- OnRenderObject and other rendering callback functions are called on every redraw of the **Scene** view or **Game** view.

See Also: ExecuteAlways, Application.IsPlaying, runInEditMode, EditorApplication.QueuePlayerLoopUpdate.

```csharp
// The PrintAwake script is placed on a GameObject. Usually, the Awake function is
// called when the GameObject with this script is initialized at runtime. Due to the ExecuteInEditMode
// attribute, the Editor also calls Awake when the script component is created via an Editor menu or when a scene that contains it is loaded.
// The Update function is called when the Scene view needs to render, which happens when something in the scene changes or you navigate the scene with mouse or keyboard inputs.using UnityEngine;[ExecuteInEditMode]
public class PrintAwake : MonoBehaviour
{
    void Awake()
    {
        Debug.Log("Editor causes this Awake");
    }    void Update()
    {
        Debug.Log("Editor causes this Update");
    }
}
```
