<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ManipulatorActivationFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines conditions for manipulators to respond to specific events.

```csharp
public class ClickableTest
 {
     public void CreateClickable()
     {
         var clickable = new Clickable(() => { Debug.Log("Clicked!"); });
         clickable.activators.Add(new ManipulatorActivationFilter { button = MouseButton.LeftMouse });
         clickable.activators.Add(new ManipulatorActivationFilter { button = MouseButton.RightMouse, clickCount = 2, modifiers = EventModifiers.Control });
     }
 }
```

### Properties

| Property | Description |
| --- | --- |
| button | The button that triggers the manipulation. |
| clickCount | Number of mouse clicks required to activate the manipulator. |
| modifiers | Any modifier keys (ie. ctrl, alt, ...) required to trigger the manipulator. |

### Public Methods

| Method | Description |
| --- | --- |
| Matches | Checks whether the current mouse event satisfies the activation requirements. |
