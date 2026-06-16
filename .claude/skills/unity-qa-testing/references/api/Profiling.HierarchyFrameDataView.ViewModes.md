<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.ViewModes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ViewModes enum defines data aggregation rules.

### Properties

| Property | Description |
| --- | --- |
| Default | Sets the View mode to raw hierarchy which represents each sample by an individual item. |
| MergeSamplesWithTheSameName | Merges and aggregates samples with the same name into a single hierarchy item. |
| HideEditorOnlySamples | Skips sub-hierarchies that represent Editor-only code paths. |
| InvertHierarchy | Aggregates samples with the same name and displays them in an inverted hierarchy. The children of each item are the samples that contain it. |
