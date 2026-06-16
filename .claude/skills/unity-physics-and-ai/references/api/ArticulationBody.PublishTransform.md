<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.PublishTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reads the position and rotation of the Articulation Body from the physics system and applies it to the corresponding Transform component.

Note: This method doesn't update the child Transforms. It should be called from the topmost Transform, down the hierarchy.

```csharp
using System.Linq;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    private PhysicsScene m_SomeScene;
    private ArticulationBody m_RootArticulation;    public void SimulateTrajectory(float totalTime)
    {
        m_SomeScene.RunSimulationStages(0f, SimulationStage.PrepareSimulation);        for (int i = 0; i < totalTime / Time.fixedDeltaTime; i++)
            m_SomeScene.RunSimulationStages(Time.fixedDeltaTime, SimulationStage.RunSimulation);        // Transforms of the ArticulationBody tree are still like they were at the start of the method        var links = m_RootArticulation.gameObject.GetComponentsInChildren<ArticulationBody>().ToList();
        links.Sort((a0, a1) => a0.index.CompareTo(a1.index));
        foreach (var ab in links)
            ab.PublishTransform();        // Transforms of the ArticulationBody tree are now up to date and can be accessed to see where the bodies ended up after simulating for "totalTime" seconds
    }    // Teleports the root body of the Articulation and applies the resulting position and rotation to the Transform component
    public void TeleportAndUpdate(Vector3 position, Quaternion rotation)
    {
        m_RootArticulation.TeleportRoot(position, rotation);
        m_RootArticulation.PublishTransform();
    }
}
```

Simulate a PhysicsScene with an ArticulationBody and use PublishTransform to read the information from the physics system to the Transform component.
