<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-IMGUI-Events.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# IMGUI events

The IMGUI event family refers to IMGUI events that directly affect the Unity Editor, and are Editor-only events.

UI Toolkit receives its events from the IMGUI events in the Editor. If there are IMGUI events that don’t fit into other event types, they fall under the IMGUI event family. Currently, IMGUI events support mouse and keyboard inputs tailored for the Unity Editor. UI Toolkit runtime panels might receive events that don’t originate from IMGUI.

The following table describes the IMGUI event and its propagation phases:

| **Event** | **Description** | **Trickles down** | **Bubbles up** | **Cancellable** |
| --- | --- | --- | --- | --- |
| IMGUIEvent | Sent to encapsulate IMGUI-specific events. | **Yes** | **Yes** | **Yes** |

## Event list

### IMGUIEvent

Event used to encapsulate IMGUI-specific events.
