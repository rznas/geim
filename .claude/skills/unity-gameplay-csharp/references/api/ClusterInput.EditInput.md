<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClusterInput.EditInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the input entry. This has to be unique. |
| deviceName | Device name registered to VRPN server. |
| serverUrl | URL to the vrpn server. |
| index | Index of the Input entry, refer to vrpn.cfg if unsure. |
| type | Type of the ClusterInputType as follow. |

### Description

Edit an input entry which added via ClusterInput.AddInput.

This function is not able to edit persistent input entry defined at “Project Setting > Cluster Input”.

Additional resources:ClusterInput.AddInput.
