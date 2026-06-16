<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Button-clickable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clickable MouseManipulator for this Button.

The default Clickable object provides a list of actions that are called using one or more activation filters. 
 
 To add or remove activation triggers, modify clickable.activators. An activation trigger can be any mouse button, pressed any number of times, with any modifier key. 

 Additional resources: ManipulatorActivationFilter

```csharp
myButton.clickable.activators.Add(new ManipulatorActivationFilter(...))
```

```csharp
myButton.clickable.activators.Clear()
```
