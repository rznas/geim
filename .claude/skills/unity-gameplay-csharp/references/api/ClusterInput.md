<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClusterInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for reading and writing inputs in a Unity Cluster.

ClusterInput provides access to VRPN devices by connecting to a VRPN server. It also provides access to writeable inputs. All inputs managed by ClusterInput will be replicated to the rest of the connected slaves in the cluster. Using ClusterInput is much like using the traditional Input system in Unity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Buttons and Axis provide a single value.
        bool buttonValue = ClusterInput.GetButton("button1");
        float axisValue = ClusterInput.GetAxis("axis1");        // A tracker provides 2 values, rotation and position.
        Vector3 position = ClusterInput.GetTrackerPosition("tracker1");
        Quaternion rotation = ClusterInput.GetTrackerRotation("tracker1");        if (ClusterNetwork.isMasterOfCluster)
        {
            float axisValueCustom = MyCustomDevicePlugin.GetValue("myaxis");
            ClusterInput.SetAxis("customAxis", axisValueCustom);
        }
    }
}
```
