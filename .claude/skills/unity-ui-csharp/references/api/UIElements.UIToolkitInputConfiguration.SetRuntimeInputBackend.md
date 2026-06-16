<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UIToolkitInputConfiguration.SetRuntimeInputBackend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| backend | The input backend to be used as the source of input for UI Toolkit events at runtime. |

### Description

Use this method to activate one of the two input backends available for UIToolkit events at runtime. The new Input System compatible backend allows the Input System package to send its input to UI Toolkit directly, removing the need for an UnityEngine.EventSystems.EventSystem in the user scene, and will automatically fall back to Input Manager input if the Input System package input isn't enabled in the Player Settings active input handling. Alternatively, use the legacy backend to always rely on Input Manager input only. In that case, if the Input Manager is not enabled as an active input handler, UI Toolkit runtime events will not work.

The Input System compatible backend is enabled by default. Call this method to disable it or to enable it again if it was otherwise disabled. 

 Setting the runtime input backend has no impact on Editor-only content such as EditorWindows or custom inspectors. 

 This method has no effect if there is an UnityEngine.EventSystems.EventSystem in the user scene. In that case, UI Toolkit runtime events will be provided by that EventSystem for as long as it remains enabled.
