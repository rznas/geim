<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.UnregisterRenderPickingCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderPickingCallback | The delegate object to unregister from the callback. |

### Returns

**bool** True if the unregistration succeeds. False if the callback is not registered.

### Description

Unregisters the callback that was previously registered for custom picking rendering.

The method throws `InvalidOperationException` if you try to call it inside render picking callbacks.

Additional resources: RegisterRenderPickingCallback.
