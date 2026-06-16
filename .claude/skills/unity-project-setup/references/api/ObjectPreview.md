<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base Class to derive from when creating Custom Previews.

You specify which type is the preview for by using the CustomPreview attribute derived from ObjectPreview. Below you can see an small example that will display the name of the object being inspected. The preview window will appear at the bottom of the Inspector window.

```csharp
using UnityEngine;
using UnityEditor;[CustomPreview(typeof(GameObject))]
public class MyPreview : ObjectPreview
{
    public override bool HasPreviewGUI()
    {
        return true;
    }    public override void OnPreviewGUI(Rect r, GUIStyle background)
    {
        GUI.Label(r, target.name + " is being previewed");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| target | The object currently being previewed. |

### Public Methods

| Method | Description |
| --- | --- |
| Cleanup | Use this function to release resources allocated by the ObjectPreview implementation. |
| CreatePreview | See Editor.CreatePreview. |
| DrawPreview | This is the first entry point for Preview Drawing. |
| GetInfoString | Implement this method to show object information on top of the object preview. |
| GetPreviewTitle | Override this method if you want to change the label of the Preview area. |
| HasPreviewGUI | Can this component be Previewed in its current state? |
| Initialize | Called when the Preview gets created with the objects being previewed. |
| MoveNextTarget | Called to iterate through the targets, this will be used when previewing more than one target. |
| OnInteractivePreviewGUI | Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector. |
| OnPreviewGUI | Implement to create your own custom preview for the preview area of the inspector, primary editor headers and the object selector. |
| OnPreviewSettings | Override this method if you want to show custom controls in the preview header. |
| ResetTarget | Called to Reset the target before iterating through them. |
