<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController.CreateStateMachineBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| script | MonoScript class to instantiate. |

### Returns

**int** Returns instance id of created object, returns 0 if something is not valid.

### Description

This function will create a StateMachineBehaviour instance based on the class define in this script.

This function will validate that the monoscript is a valid statemachine behaviour, the class must be a sub class of StateMachineBehaviour and shouldn't be a generic. Additional resources: StateMachineBehaviour.

```csharp
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;public class AddSMB
{
    public void DoAddStateMachineBehaviour(UnityEditor.Animations.AnimatorState state, MonoScript monoScript)
    {
        if (state == null)
            return;        int instanceID = AnimatorController.CreateStateMachineBehaviour(monoScript);
        if (instanceID == 0)
        {
            Debug.LogError("Could not create state machine behaviour " + monoScript.name);
            return;
        }        state.AddStateMachineBehaviour(monoScript.GetClass());        var obj = EditorUtility.InstanceIDToObject(instanceID);
        if (obj == null)
            Debug.LogError("No object could be found with instance id: " + instanceID);
        else
            AssetDatabase.AddObjectToAsset(obj, state.ToString());
    }
}
```
