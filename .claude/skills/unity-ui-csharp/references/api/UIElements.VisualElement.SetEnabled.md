<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.SetEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | New enabled state |

### Description

Changes the VisualElement enabled state. A disabled visual element does not receive most events.

The method disables the local flag of the VisualElement and implicitly disables its children. It does not affect the local enabled flag of each child. 
 
 A disabled visual element does not receive most input events, such as mouse and keyboard events. However, it can still respond to Attach or Detach events, and geometry change events. 
 
 When an element is disabled, its style changes to visually indicate it's inactive. 

 Additional resources: VisualElement.enabledSelf
