<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ToggleButtonGroupState.GetInactiveOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inactiveOptionsIndices | A Span of type integers with the allocated size to hold the number of inactive indices. |

### Description

Retrieves a Span of integers containing the inactive options as indices.

```csharp
public void HandleInactiveOptions()
 {
     var value = myToggleButtonGroup.value;
     var options = value.GetInactiveOptions(stackalloc int[value.length]);
     foreach (option in options)
     {
         // handle option
     }
 }
```
