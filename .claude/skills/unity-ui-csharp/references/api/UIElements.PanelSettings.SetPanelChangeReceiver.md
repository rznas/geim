<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings.SetPanelChangeReceiver.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a custom IPanelChangeReceiver in the panelChangeReceiver setter to receive every change event. This method is available only in development builds and the editor, as it is a debug feature to go along the profiling of an application.

Note that the values returned may change over time when the underlying architecture is modified.

 As this is called at every change marked on any visual element of the panel, the overhead is not negligible. The callback will not be called in release builds as the method is stripped.

 The following example uses the panelChangeReceiver in a game. To test it, add the component to a GameObject and the Panel Setting asset linked in the component fields.

```csharp
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class ChangeLogger : MonoBehaviour, IDebugPanelChangeReceiver
{
    public PanelSettings panelSettings;
    public bool logChanges = true;
    public bool printOnConsole = false;
    public bool includeStacktrace = true;
    public List<ChangeEntry> changes;

    private void OnEnable()
    {
        panelSettings.SetPanelChangeReceiver(this);
    }

    public void Initialize()
    {
        changes.Clear();
    }

    public void OnVisualElementChange(VisualElement element, VersionChangeType changeType)
    {
        if (logChanges)
        {

            if (changes == null)
                changes = new List<ChangeEntry>();

            changes.Add(new ChangeEntry()
            {
                changeType = changeType,
                element = element.ToString(),
                stackTrace = includeStacktrace ? Environment.StackTrace : null
            });
        }

        if (printOnConsole)
        {
            Debug.Log($"{string.Join(",", changeType.toStrings()),-40} {element}");
        }
    }

    [Serializable]
    public struct ChangeEntry
    {
        public string element;

        public VersionChangeType changeType;

        [TextArea(10, 30)]
        public string stackTrace;
    }
}

public static class ChangeTypeHelpers
{
    public static List<string> toStrings(this VersionChangeType type)
    {
        var changes = new List<string>();

        foreach (var value in (VersionChangeType[])Enum.GetValues(typeof(VersionChangeType)))
        {
            if ((type & value) != 0)
                changes.Add(value.ToString());
        }
        return changes;
    }
}
```
