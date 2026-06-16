<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.IProfilerFrameTimeViewSampleSelectionController.SetSelection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selection | A fully described selection created via a the ProfilerTimeSampleSelection constructor or previously retrieved via ProfilerWindow.selection. |

### Returns

**bool** Returns true if the selection was successfully set, false if it was rejected because no fitting sample could be found.

### Description

Set the current selection in a frame time sample based Profiler Module, such as the CPU Usage module and the GPU Usage Profiler module.

Profile Module will become active and selected as a result of the 'SetSelection' call.

If you don't know the rawSampleIndex of the sample you want to select, you can use either RawFrameDataView or the extension methods ProfilerEditorUtility.SetSelection to find it. This extension method searches for a sample by its name or Profiler Marker ID, the frame and the thread it occurred in, and optionally a sample stack where it should be found.

When no frame data is available in the Profiler Window, Unity throws an Exception. You can check that ProfilerWindow.firstAvailableFrameIndex is greater or equal to 0 to validate that frame data is available.

When the frame index of the selection is outside of the range described by ProfilerWindow.firstAvailableFrameIndex and ProfilerWindow.lastAvailableFrameIndex, Unity throws an ArgumentOutOfRangeException.

When the thread the selection object refers to cannot be found, Unity throws an ArgumentException.

Additional resources: ProfilerEditorUtility.SetSelection and IProfilerFrameTimeViewSampleSelectionController.ClearSelection.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Profiling;
using UnityEditorInternal;
using UnityEngine;// This example assumes the profiled scene contained a component of MyScript.cs:
/* using UnityEngine;public class MyScript : MonoBehaviour
{
    void Update()
    {
        MethodWithABoxingAllocation();
    }    object MethodWithABoxingAllocation()
    {
        return 1;
    }
}*/public class Example : EditorWindow
{
    const string k_MainThreadGroupName = "";
    const string k_MainThreadName = "Main Thread";
    const string k_GCAllocSampleName = "GC.Alloc";
    // Profiler samples that were instrumented by Unity's Message Invoking mechanism,
    // e.g. Update(), Start(), FixedUpdate() ... get an " [Invoke]" postfix
    const string k_InvokePostFix = " [Invoke]";
    public enum UpdateNameMatchType
    {
        Short,
        Full,
    }    ProfilerWindow m_Profiler = null;
    UpdateNameMatchType m_UpdateNameMatchType = UpdateNameMatchType.Short;
    bool m_UseMarkerNames = true;    string GetUpdateSampleName(UpdateNameMatchType updateNameMatchType, bool deepProfiling)
    {
        switch (updateNameMatchType)
        {
            case UpdateNameMatchType.Short:
                if (deepProfiling)
                    return k_UpdateSampleNameShort;
                return k_UpdateSampleNameShort + k_InvokePostFix;
            case UpdateNameMatchType.Full:
                if (deepProfiling)
                    return k_UpdateSampleNameFull;                return k_UpdateSampleNameFull + k_InvokePostFix;
            default:
                throw new NotImplementedException();
        }
    }    const string k_UpdateSampleNameFull = "Assembly-CSharp.dll!::MyScript.Update()";
    // Invoked method samples or samples instrumented via Deep Profiling will by default be shown
    // without their fully qualifying type name as above
    // Instead the Profiler UI will strip out everything before the '!::' part of their name.
    // SetSelection will still find these samples, if the UI is set to not Show Full Scripting Method Names
    // Note that RawFrameDataView and HierarchyFrameDataView will not be able to identify the Marker IDs
    // for such samples from this shorter name.
    const string k_UpdateSampleNameShort = "MyScript.Update()";    static readonly List<string> k_SampleNames = new List<string>
    {
        "PlayerLoop",
        "Update.ScriptRunBehaviourUpdate",
        "BehaviourUpdate",
    };    [MenuItem("Window/Analysis/Profiler Extension")]
    public static void ShowExampleWindow()
    {
        var window = GetWindow<Example>();
        window.m_Profiler = EditorWindow.GetWindow<ProfilerWindow>();
    }    void OnGUI()
    {
        // First make sure there is an open Profiler Window
        if (m_Profiler == null)
            m_Profiler = EditorWindow.GetWindow<ProfilerWindow>();        // For demonstration purposes, let the user choose if the names or if Marker IDs should be used.
        m_UseMarkerNames = GUILayout.Toggle(m_UseMarkerNames, "Use Marker names instead of IDs");
        if (!m_UseMarkerNames)
            m_UpdateNameMatchType = UpdateNameMatchType.Full;        // Marker IDs need to be gotten from the fully qualified type name, so the shorter name is not an option when using IDs
        using (new EditorGUI.DisabledScope(!m_UseMarkerNames))
        {
            // For demonstration purposes, let the user choose if the short or the long name should be used.
            m_UpdateNameMatchType = (UpdateNameMatchType)EditorGUILayout.EnumPopup(m_UpdateNameMatchType);
        }        // If the currently selected Module is not the CPU Usage module, setting the selection will not be visible to the user immediately
        if (m_Profiler.selectedModuleIdentifier == ProfilerWindow.cpuModuleIdentifier)
        {
            // Get the CPU Usage Profiler module's selection controller interface to interact with the selection
            var cpuSampleSelectionController = m_Profiler.GetFrameTimeViewSampleSelectionController(ProfilerWindow.cpuModuleIdentifier);
            // If the current selection object is null, there is no selection to print out.
            using (new EditorGUI.DisabledScope(m_Profiler.lastAvailableFrameIndex < 0))
            {
                if (GUILayout.Button("Check my Script for GC.Alloc"))
                {
                    string samplePath = "";
                    for (int i = 0; i < k_SampleNames.Count; i++)
                    {
                        samplePath += $"{k_SampleNames[i]}/";
                    }                    var samplePathDeepProfiling = samplePath + $"{GetUpdateSampleName(m_UpdateNameMatchType, true)}/";
                    samplePath = samplePath + $"{GetUpdateSampleName(m_UpdateNameMatchType, false)}/";
                    // the sample we are looking for, without a trailing '/'
                    samplePath += k_GCAllocSampleName;
                    samplePathDeepProfiling += k_GCAllocSampleName;                    // This check will fail in Deep Profiling because "MethodWithABoxingAllocation()" will be instrumented
                    // and sitting in the sample stack between "Update()" and the "GC.Alloc".
                    if (cpuSampleSelectionController.SetSelection(samplePath) || cpuSampleSelectionController.SetSelection(samplePathDeepProfiling))
                    {
                        Debug.LogWarning("MyScript allocates in its Update loop");
                    }
                    else
                    {
                        if (m_UseMarkerNames)
                        {
                            samplePath = "";
                            for (int i = 0; i < k_SampleNames.Count; i++)
                            {
                                samplePath += $"{k_SampleNames[i]}{ (i < k_SampleNames.Count - 1 ?"/": "")}";
                            }
                            // SetSelection calls that take sample names as strings will find shortened scripting sample names
                            var mySctiprSamplePathDeepProfiling = $"{samplePath}/{GetUpdateSampleName(m_UpdateNameMatchType, true)}";
                            var myScriptSamplePath = $"{samplePath}/{GetUpdateSampleName(m_UpdateNameMatchType, false)}";                            if (cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                k_MainThreadGroupName, k_MainThreadName, k_GCAllocSampleName, myScriptSamplePath) ||
                                cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                    k_MainThreadGroupName, k_MainThreadName, k_GCAllocSampleName, mySctiprSamplePathDeepProfiling))
                            {
                                Debug.LogWarning("MyScript allocates in its Update loop");
                            }
                            // MyScript did not have a GC.Alloc sample underneath it, but maybe a different Update sample allocated
                            // Search through all Update() samples
                            else if (cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                k_MainThreadGroupName, k_MainThreadName, k_GCAllocSampleName, samplePath))
                            {
                                Debug.LogWarning($"MyScript does not allocate but {cpuSampleSelectionController.selection.markerNamePath[k_SampleNames.Count]} allocates in its Update loop");
                            }
                            else
                            {
                                Debug.Log("No Script is allocating in its Update Loop");
                                FindAnyGCAllocSample(cpuSampleSelectionController);
                            }
                        }
                        else
                        {
                            List<int> markerIdPath = new List<int>(k_SampleNames.Count + 1);
                            List<int> deepProfilingmarkerIdPath = new List<int>(k_SampleNames.Count + 1);
                            int gcAllocMarkerId = FrameDataView.invalidMarkerId;
                            using (var frameData = ProfilerDriver.GetRawFrameDataView((int)m_Profiler.selectedFrameIndex, 0))
                            {
                                for (int i = 0; i < k_SampleNames.Count; i++)
                                {
                                    markerIdPath.Add(frameData.GetMarkerId(k_SampleNames[i]));
                                }
                                deepProfilingmarkerIdPath.AddRange(markerIdPath);
                                // GetMarkerId needs the full length marker name to be able to identify this sample.
                                markerIdPath.Add(frameData.GetMarkerId(GetUpdateSampleName(UpdateNameMatchType.Full, false)));
                                deepProfilingmarkerIdPath.Add(frameData.GetMarkerId(GetUpdateSampleName(UpdateNameMatchType.Full, true)));                                gcAllocMarkerId = frameData.GetMarkerId(k_GCAllocSampleName);
                            }                            if (cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                k_MainThreadGroupName, k_MainThreadName, gcAllocMarkerId, markerIdPath) ||
                                cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                    k_MainThreadGroupName, k_MainThreadName, gcAllocMarkerId, deepProfilingmarkerIdPath))
                            {
                                Debug.LogWarning("MyScript allocates in its Update loop");
                            }
                            else
                            {
                                // MyScript did not have a GC.Alloc sample underneath it, but maybe a different Update sample allocated
                                // Remove the MyScript sample id from the path and search through all Update() samples
                                markerIdPath.Remove(markerIdPath.Count - 1);
                                if (cpuSampleSelectionController.SetSelection(m_Profiler.selectedFrameIndex,
                                    k_MainThreadGroupName, k_MainThreadName,
                                    gcAllocMarkerId, markerIdPath))
                                {
                                    Debug.LogWarning($"MyScript does not allocate but {cpuSampleSelectionController.selection.markerNamePath[k_SampleNames.Count]} allocates in its Update loop");
                                    return;
                                }
                                Debug.Log("No Script is allocating in its Update Loop");
                                FindAnyGCAllocSample(cpuSampleSelectionController);
                            }
                        }
                    }
                }
            }
        }
    }    void FindAnyGCAllocSample(IProfilerFrameTimeViewSampleSelectionController cpuSampleSelectionController)
    {
        using (var frameData = ProfilerDriver.GetRawFrameDataView((int)m_Profiler.selectedFrameIndex, 0))
        {
            var gcAllocMarkerId = frameData.GetMarkerId(k_GCAllocSampleName);
            for (int i = 0; i < frameData.sampleCount; i++)
            {
                if (frameData.GetSampleMarkerId(i) == gcAllocMarkerId)
                {
                    var selection = new ProfilerTimeSampleSelection(m_Profiler.selectedFrameIndex, k_MainThreadGroupName,
                        k_MainThreadName, frameData.threadId, i);
                    if (cpuSampleSelectionController.SetSelection(selection))
                    {
                        // do not use the selection object here. The CPU Profiler Module created a new one.
                        // Instead Get the selection object from the Profiler
                        Debug.LogWarning($"MyScript does not allocate but {cpuSampleSelectionController.selection.markerNamePath[k_SampleNames.Count]} allocates in its Update loop");
                        return;
                    }
                }
            }
            Debug.Log("No Script is allocating anything");
        }
    }
}
```

This example shows all major variations of SetSelection and showcases their differences.
