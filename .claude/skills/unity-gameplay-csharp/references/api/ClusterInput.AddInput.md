<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClusterInput.AddInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the input entry. This has to be unique. |
| deviceName | Device name registered to VRPN server. |
| serverUrl | URL to the vrpn server. |
| index | Index of the Input entry, refer to vrpn.cfg if unsure. |
| type | Type of the input. |

### Returns

**bool** True if the operation succeed.

### Description

Add a new VRPN input entry.

The parameters are identical to how you add a input via “Project Setting > Cluster Input”. Input entry added via this method only valid for the lifetime of the application session. The added entry will not persist like those you added via the “Project Setting > Cluster Input”.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void AddNewClusterInputEntry()
    {
        // Add a new entry named "new_button_1". Which is a mouse connected to VRPN at localhost.
        ClusterInput.AddInput("new_button_1", "mouse_0", "localhost", 0, ClusterInputType.Button);
    }
}
```

Additional resources:ClusterInput.EditInput.
