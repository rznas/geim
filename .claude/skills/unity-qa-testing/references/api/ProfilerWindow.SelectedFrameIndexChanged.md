<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ProfilerWindow.SelectedFrameIndexChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The zero-based index of the frame currently selected in the Profiler Window. A long. |

### Description

Calls the methods in its invocation list when the Profiler window’s selected frame index changes.

The Profiler window’s selected frame index may change for a variety of reasons, such as a new frame being captured, the user selecting a new frame, or a new capture being loaded.

```csharp
using UnityEditor;
using UnityEngine;public class Example : EditorWindow
{
    ProfilerWindow m_Profiler;
    long m_SelectedFrameIndex;    [MenuItem("Window/Analysis/Profiler Extension")]
    public static void ShowExampleWindow()
    {
        GetWindow<Example>();
    }    void OnEnable()
    {
        // Make sure there is an open Profiler Window.
        if (m_Profiler == null)
            m_Profiler = EditorWindow.GetWindow<ProfilerWindow>();        // Subscribe to the Profiler window's SelectedFrameIndexChanged event.
        m_Profiler.SelectedFrameIndexChanged += OnProfilerSelectedFrameIndexChanged;
    }    private void OnGUI()
    {
        GUILayout.Label($"The selected frame in the Profiler window is {m_SelectedFrameIndex}.");
    }    private void OnDisable()
    {
        // Unsubscribe from the Profiler window's SelectedFrameIndexChanged event.
        m_Profiler.SelectedFrameIndexChanged -= OnProfilerSelectedFrameIndexChanged;
    }    void OnProfilerSelectedFrameIndexChanged(long selectedFrameIndex)
    {
        // Update the GUI with the selected Profiler frame.
        m_SelectedFrameIndex = selectedFrameIndex;
        Repaint();
    }
}
```

Additional resources: ProfilerWindow.selectedFrameIndex.
