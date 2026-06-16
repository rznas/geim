<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeGroupEditorUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper class to enable interaction with the in-scene Light Probe Group edit tool. You can leverage the methods provided by this class to build custom tooling surrounding LightProbeGroups.

Additional resources: LightProbeGroup.

### Static Properties

| Property | Description |
| --- | --- |
| probesAreBeingEdited | Indicates whether the Light Probe editor tool is actively being used in the current scene. |

### Static Methods

| Method | Description |
| --- | --- |
| GetSelectedLightProbes | Retrieves the currently selected probes, as indexes. |
| MarkProbePositionsDirty | Informs the Light Probe Editor tool that you have modified the probe positions. |
| SelectLightProbe | Selects a light probe in the Light Probe edit tool. |
| UnselectLightProbe | Removes the selection from a light probe in the Light Probe edit tool. |
