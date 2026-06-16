<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointDrive-positionDamper.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resistance strength against the Position Spring. Only used if `mode` includes Position.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Create a JointDrive, configure it, and assign it to the zDrive of a ConfigurableJoint.
    void Start()
    {
        ConfigurableJoint joint = gameObject.AddComponent<ConfigurableJoint>();
        joint.targetPosition = new Vector3(0, 0, -10);        JointDrive drive = new JointDrive
        {
            positionSpring = 50,         // Add a spring force to pull toward the target position
            positionDamper = 10,         // Dampen oscillations
            maximumForce = Mathf.Infinity // Allow unlimited force
        };        joint.zDrive = drive; // Assign the configured drive to the zDrive of the joint
    }
}
```
