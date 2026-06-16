<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PointerCaptureHelper.ReleasePointer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The element which potentially captured the pointer. |
| pointerId | The captured pointer. |

### Description

Tests whether an element captured a pointer and, if so, tells the element to release the pointer.

If a pointer release is requested during the propagation of an existing event, the release takes effect only after the ongoing event has been fully dispatched and propagated.

### Parameters

| Parameter | Description |
| --- | --- |
| panel | The panel that holds the element that captured the pointer. |
| pointerId | The captured pointer. |

### Description

Releases the pointer.

If a pointer release is requested during the propagation of an existing event, the release takes effect only after the ongoing event has been fully dispatched and propagated.
