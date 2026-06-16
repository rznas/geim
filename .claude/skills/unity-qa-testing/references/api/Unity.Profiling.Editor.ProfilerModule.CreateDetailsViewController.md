<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModule.CreateDetailsViewController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ProfilerModuleViewController** Returns a ProfilerModuleViewController derived object that draws the module’s Details View in the Profiler window. The default value is a view controller that displays a list of the module’s chart counters alongside their current values in the selected frame.

### Description

Creates a View Controller object that draws the Profiler module’s Details View in the Profiler window. Unity calls this method automatically when the module is selected in the Profiler window.

To present a bespoke visualization of your performance data when your module is selected, override this method. To do this, define a new ProfilerModuleViewController derived type, where the custom drawing can be implemented, and return a new instance of it in this method.

.

```csharp
using System;
using Unity.Profiling;
using Unity.Profiling.Editor;
using UnityEditor;
using UnityEngine.UIElements;//--Module--[Serializable]
[ProfilerModuleMetadata("Garbage Collection")]
public class GarbageCollectionProfilerModule : ProfilerModule
{
    static readonly ProfilerCounterDescriptor[] k_ChartCounters = new ProfilerCounterDescriptor[]
    {
        new ProfilerCounterDescriptor("GC Reserved Memory", ProfilerCategory.Memory),
        new ProfilerCounterDescriptor("GC Used Memory", ProfilerCategory.Memory),
        new ProfilerCounterDescriptor("GC Allocated In Frame", ProfilerCategory.Memory),
    };    // Specify a list of Profiler category names, which should be auto-enabled when the module is active.
    static readonly string[] k_AutoEnabledCategoryNames = new string[]
    {
        ProfilerCategory.Memory.Name,
    };    public GarbageCollectionProfilerModule() : base(k_ChartCounters, autoEnabledCategoryNames: k_AutoEnabledCategoryNames) { }    public override ProfilerModuleViewController CreateDetailsViewController()
    {
        return new GarbageCollectionDetailsViewController(ProfilerWindow);
    }
}//--Module Custom Drawing--public class GarbageCollectionDetailsViewController : ProfilerModuleViewController
{
    const string k_UxmlResourceName = "Assets/Editor/GarbageCollectionDetailsView.uxml";
    const string k_UxmlElementId_GarbageCollectionDetailsViewBarFill = "garbage-collection-details-viewbar-fill";
    const string k_UxmlElementId_GarbageCollectionDetailsViewBarLabel = "garbage-collection-details-viewbar-label";    static readonly ProfilerCounterDescriptor k_GcReservedMemoryCounterDescriptor = new ProfilerCounterDescriptor("GC Reserved Memory", ProfilerCategory.Memory);
    static readonly ProfilerCounterDescriptor k_GcUsedMemoryCounterDescriptor = new ProfilerCounterDescriptor("GC Used Memory", ProfilerCategory.Memory);    VisualElement m_BarFill;
    Label m_BarLabel;    public GarbageCollectionDetailsViewController(ProfilerWindow profilerWindow) : base(profilerWindow) { }    protected override VisualElement CreateView()
    {
        var template = AssetDatabase.LoadAssetAtPath<VisualTreeAsset>(k_UxmlResourceName);
        var view = template.Instantiate();        m_BarFill = view.Q<VisualElement>(name: k_UxmlElementId_GarbageCollectionDetailsView__BarFill);
        m_BarLabel = view.Q<Label>(name: k_UxmlElementId_GarbageCollectionDetailsView__BarLabel);        ReloadData(ProfilerWindow.selectedFrameIndex);
        ProfilerWindow.SelectedFrameIndexChanged += OnSelectedFrameIndexChanged;        return view;
    }    protected override void Dispose(bool disposing)
    {
        if (!disposing)
            return;        ProfilerWindow.SelectedFrameIndexChanged -= OnSelectedFrameIndexChanged;
        base.Dispose(disposing);
    }    void OnSelectedFrameIndexChanged(long selectedFrameIndex)
    {
        ReloadData(selectedFrameIndex);
    }    void ReloadData(long selectedFrameIndex)
    {
        long gcReservedBytes = 0;
        long gcUsedBytes = 0;        var selectedFrameIndexInt32 = Convert.ToInt32(selectedFrameIndex);
        using (var frameData = UnityEditorInternal.ProfilerDriver.GetRawFrameDataView(selectedFrameIndexInt32, 0))
        {
            if (frameData == null || !frameData.valid)
                return;            var gcReservedBytesMarkerId = frameData.GetMarkerId(k_GcReservedMemoryCounterDescriptor.Name);
            gcReservedBytes = frameData.GetCounterValueAsLong(gcReservedBytesMarkerId);            var gcUsedBytesMarkerId = frameData.GetMarkerId(k_GcUsedMemoryCounterDescriptor.Name);
            gcUsedBytes = frameData.GetCounterValueAsLong(gcUsedBytesMarkerId);
        }        float gcUsedBytesScalar = (float)gcUsedBytes / gcReservedBytes;
        m_BarFill.style.width = new Length(gcUsedBytesScalar * 100, LengthUnit.Percent);
        m_BarLabel.text = $"{EditorUtility.FormatBytes(gcUsedBytes)} / {EditorUtility.FormatBytes(gcReservedBytes)}";
    }
}//--Assets/Editor/GarbageCollectionDetailsView.uxml--<?xml version="1.0" encoding="utf-8"?>
<engine:UXML
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:engine="UnityEngine.UIElements"
    xmlns:editor="UnityEditor.UIElements"
    xsi:noNamespaceSchemaLocation="../../UIElementsSchema/UIElements.xsd">
  <engine:Style src="GarbageCollectionDetailsView.uss"/>
  <engine:VisualElement name="garbage-collection-details-view">
    <engine:Label name="garbage-collection-details-viewtitle-label" text="Garbage Collection"/>
    <engine:VisualElement name="garbage-collection-details-viewbar">
      <engine:VisualElement name="garbage-collection-details-viewbar-fill"/>
    </engine:VisualElement>
    <engine:Label name="garbage-collection-details-viewbar-label"/>
  </engine:VisualElement>
</engine:UXML>//--Assets/Editor/GarbageCollectionDetailsView.uss--#garbage-collection-details-view
{
    flex-grow: 1;
    margin: 8px;
}#garbage-collection-details-view__title-label
{
    -unity-font-style: bold;
    margin-bottom: 8px;
}#garbage-collection-details-view__bar
{
    background-color: gray;
    flex-direction: row;
    height: 20px;
}#garbage-collection-details-view__bar-fill
{
    background-color: #B2194C;
    position: absolute;
    height: 100%;
}
```

Additional resources: ProfilerModuleViewController.
