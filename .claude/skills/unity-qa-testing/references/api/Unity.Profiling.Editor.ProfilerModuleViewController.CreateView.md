<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModuleViewController.CreateView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**VisualElement** Returns the view controller’s view. A VisualElement.

### Description

Creates the view controller’s view. Unity calls this method automatically when it is about to display the view controller’s view for the first time.

You must override this method to construct the view controller’s view hierarchy. To do this, load a visual tree from a UXML file, or construct a view directly in C#, as shown in the example code.

```csharp
using Unity.Profiling.Editor;
using UnityEditor;
using UnityEngine.UIElements;public class SingleCounterViewController : ProfilerModuleViewController
{
    ProfilerCounterDescriptor m_Counter;
    Label m_CounterLabel;    public SingleCounterViewController(ProfilerWindow profilerWindow, ProfilerCounterDescriptor counter) : base(profilerWindow)
    {
        m_Counter = counter;
    }    protected override VisualElement CreateView()
    {
        // Create a simple view with a single label.
        var view = new VisualElement();
        m_CounterLabel = new Label();
        view.Add(m_CounterLabel);        // Subscribe to Profiler window SelectedFrameIndexChanged event.
        ProfilerWindow.SelectedFrameIndexChanged += OnSelectedFrameIndexChanged;        // Populate label with counter value in selected frame.
        ReloadData();        return view;
    }    protected override void Dispose(bool disposing)
    {
        if (!disposing)
            return;        // Unsubscribe from Profiler window SelectedFrameIndexChanged event.
        ProfilerWindow.SelectedFrameIndexChanged -= OnSelectedFrameIndexChanged;        base.Dispose(disposing);
    }    void OnSelectedFrameIndexChanged(long selectedFrame)
    {
        // Update label with counter value in selected frame.
        ReloadData();
    }    void ReloadData()
    {
        // Update label text with formatted counter value in selected frame.
        var selectedFrameIndexInt32 = System.Convert.ToInt32(ProfilerWindow.selectedFrameIndex);
        var formattedCounterValue = UnityEditorInternal.ProfilerDriver.GetFormattedCounterValue(selectedFrameIndexInt32, m_Counter.CategoryName, m_Counter.Name);
        m_CounterLabel.text = $"{m_Counter}: {formattedCounterValue}";
    }
}
```

Additional resources: ProfilerWindow.SelectedFrameIndexChanged, ProfilerModule, ProfilerCounterDescriptor.
