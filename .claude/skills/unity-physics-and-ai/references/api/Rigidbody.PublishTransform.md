<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.PublishTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Applies the position and rotation of the Rigidbody to the corresponding Transform component.

This is more efficient than setting Transform.position and Transform.rotation manually.

Note: This method doesn't update the child Transforms. It should be called from the topmost Transform, down the hierarchy.

```csharp
using UnityEngine;public class PositionTracker : MonoBehaviour
{
    private PhysicsScene m_SomeScene;
    private Rigidbody m_Rigidbody;    public void SimulateTrajectory(float totalTime)
    {
        m_SomeScene.RunSimulationStages(0f, SimulationStage.PrepareSimulation);        for (int i = 0; i < totalTime / Time.fixedDeltaTime; i++)
            m_SomeScene.RunSimulationStages(Time.fixedDeltaTime, SimulationStage.RunSimulation);        // Transform of the m_Rigidbody is still like it was at the start of the method
        m_Rigidbody.PublishTransform();
        // Transform of the m_Rigidbody is now up to date and can be accessed to see where the body ended up after simulating for "totalTime" seconds
    }
}
```

Simulate a PhysicsScene with a Rigidbody and use PublishTransform to read the information from the physics system to the Transform component.
