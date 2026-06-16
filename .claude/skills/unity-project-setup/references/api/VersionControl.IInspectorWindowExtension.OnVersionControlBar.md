<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.IInspectorWindowExtension.OnVersionControlBar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editor | Inspector that contains the version control bar. |

### Description

Allows you to add custom GUI controls to the version control bar in the specified inspector.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject, IInspectorWindowExtension
{
    string m_State;    public void OnVersionControlBar(Editor editor)
    {
        if (m_State == null)
            m_State = "Ready";
        GUILayout.Label("State: " + m_State);
    }    public void InvalidateVersionControlBarState()
    {
        m_State = null;
    }
}
```

Additional resources: IInspectorWindowExtension, VersionControlObject.
