<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ProfilerWindow-cpuModuleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deprecated: Use ProfilerWindow.cpuModuleIdentifier instead. The name of the CPU Usage Profiler module.

Compare this constant to ProfilerWindow.selectedModuleName to check if the currently selected Profiler module is the CPU Usage Profiler module. **Note:** This text remains in English, even if the UI is translated into other languages.

```csharp
using UnityEditor;
using UnityEditor.Profiling;
using UnityEngine;public class Example : EditorWindow
{
    ProfilerWindow m_Profiler = null;
    [MenuItem("Window/Analysis/Profiler Extension")]
    public static void ShowExampleWindow()
    {
        var window = GetWindow<Example>();
        window.m_Profiler = EditorWindow.GetWindow<ProfilerWindow>();
    }    void OnGUI()
    {
        // First make sure there is an open Profiler Window
        if (m_Profiler == null)
            m_Profiler = EditorWindow.GetWindow<ProfilerWindow>();
        // If the currently selected Module is not the CPU Usage module, setting the selection will not be visible to the user immediately
        if (m_Profiler.selectedModuleName == ProfilerWindow.cpuModuleName)
        {
            // Get the CPU Usage Profiler module's selection controller interface to interact with the selection
            var cpuSampleSelectionController = m_Profiler.GetFrameTimeViewSampleSelectionController(ProfilerWindow.cpuModuleName);
            // If the current selection object is null, there is no selection to print out.
            using (new EditorGUI.DisabledScope(cpuSampleSelectionController.selection == null))
            {
                if (GUILayout.Button("Print current Selection"))
                {
                    // Get the currently shown selection and log out some of its details
                    var selection = cpuSampleSelectionController.selection;
                    Debug.Log($"The currently selected sample is {selection.sampleDisplayName} at a depth of {selection.markerPathDepth}.");
                }
            }
        }
    }
}
```
