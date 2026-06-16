<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController.CreateNewStateMachineBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| script | MonoScript class to instantiate. |

### Returns

**EntityId** Returns EntityId of created object, returns EntityId.None if something is not valid.

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
            return;        EntityId entityId = AnimatorController.CreateNewStateMachineBehaviour(monoScript);
        if (entityId == EntityId.None)
        {
            Debug.LogError("Could not create state machine behaviour " + monoScript.name);
            return;
        }        state.AddStateMachineBehaviour(monoScript.GetClass());
        var behaviour = EditorUtility.EntityIdToObject(entityId);
        AssetDatabase.AddObjectToAsset(behaviour, state.ToString());
    }
}
```
