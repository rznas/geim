<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ReserveModifiersAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| modifiers | One or more modifiers to reserve. |

### Description

Creates an attribute that reserves a modifier for a single shortcut.

```csharp
using UnityEditor;
using UnityEditor.ShortcutManagement;
using UnityEngine;public class CustomSceneViewNavigation : ScriptableSingleton<CustomSceneViewNavigation>
{
    bool moveForward;
    bool moveBack;
    bool boost;    [ClutchShortcut("Custom Scene Navigation/Move Forward", KeyCode.KeypadMinus)]
    [ReserveModifiers(ShortcutModifiers.Shift)]
    static void MoveForward(ShortcutArguments args)
    {
        instance.moveForward = args.stage == ShortcutStage.Begin;
    }    [ClutchShortcut("Custom Scene Navigation/Move Back", KeyCode.KeypadPlus)]
    [ReserveModifiers(ShortcutModifiers.Shift)]
    static void MoveBack(ShortcutArguments args)
    {
        instance.moveBack = args.stage == ShortcutStage.Begin;
    }    private void OnEnable()
    {
        SceneView.duringSceneGui += DuringSceneGUI;
    }    private void OnDisable()
    {
        SceneView.duringSceneGui -= DuringSceneGUI;
    }    void DuringSceneGUI(SceneView view)
    {
        boost = Event.current.shift;        var speed = boost ? 5 : 1;
        var direction = Vector3.zero;        if (moveForward)
            direction += view.camera.transform.forward;        if (moveBack)
            direction += -view.camera.transform.forward;        view.pivot += direction.normalized * Time.smoothDeltaTime * speed;
    }
}
```
