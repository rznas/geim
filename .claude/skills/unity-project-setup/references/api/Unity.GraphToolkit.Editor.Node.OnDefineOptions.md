<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.OnDefineOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Provides methods for defining node options. |

### Description

Called during DefineNode to define the options available on the node.

This method is called before OnDefinePorts. Override this method to add node options using the provided IOptionDefinitionContext.

```csharp
protected override void OnDefineOptions(IOptionDefinitionContext context)
 {
     context.AddNodeOption&lt;bool&gt;(
         optionName: "My Bool",
         optionDisplayName: "myBoolId");     context.AddNodeOption(
         optionName: "Label",
         dataType: typeof(string),
         optionDisplayName: "labelId",
         tooltip: "A label.",
         defaultValue: "Default Value");
 }
```
