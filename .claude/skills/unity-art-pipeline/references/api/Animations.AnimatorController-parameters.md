<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController-parameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters are used to communicate between scripting and the controller. They are used to drive transitions and blendtrees for example.

It's important to note that the AnimatorControllerParameters are returned as a copy. The array should be set back into the property when changed.

```csharp
using UnityEngine;
using UnityEditor;class ControllerModifier
{
    UnityEditor.Animations.AnimatorController controller;    public void ModifyParameters(int parameterIndex, string newName)
    {
        AnimatorControllerParameter[] parameters = controller.parameters;
        parameters[parameterIndex].name = newName;
        controller.parameters = parameters;
    }
}
```
