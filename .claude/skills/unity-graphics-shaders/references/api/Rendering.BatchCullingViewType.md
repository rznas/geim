<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingViewType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of an object that is requesting culling.

### Properties

| Property | Description |
| --- | --- |
| Unknown | The type of the object that is requesting culling is unknown. |
| Camera | A Camera is requesting culling. |
| Light | A shadow-casting Light is requesting culling. |
| Picking | The Scene view is requesting culling so that it can render object picking data. Unity calls the OnPerformCulling() with this enum value when a user clicks in the Scene view. |
| SelectionOutline | The Scene view is requesting culling so that it can render the selection outline of the objects currently picked. Unity calls the OnPerformCulling() with this enum value when rendering the selection outline. |
| Filtering | The Scene view is requesting culling so that it can render filtered objects. Unity calls the OnPerformCulling() with this enum value when a user writes a search query in the Hierarchy window. |
