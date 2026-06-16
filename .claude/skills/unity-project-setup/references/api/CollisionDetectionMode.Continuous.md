<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionDetectionMode.Continuous.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Continuous collision detection is on for colliding with static mesh geometry.

Collisions will be detected for any static mesh geometry in the path of this Rigidbody, even if the collision occurs between two FixedUpdate steps. Static mesh geometry is any MeshCollider which does not have a Rigidbody attached. This also prevent Rigidbodies set to ContinuousDynamic mode from passing through this Rigidbody.

```csharp
//This script allows you to switch collision detection mode at the press of the space key
//Attach this script to a GameObject
//Click the GameObject, go to its Inspector and click the Add Component Button. Then, go to Physics>Rigidbody.using UnityEngine;
using UnityEngine.UI;
using UnityEngine.InputSystem;
                        
public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;    void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
    }    public void Update()
    {
        //Press the space key to switch the collision detection mode
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
            SwitchCollisionDetectionMode();
    }    //Switch between the different Collision Detection Modes
    void SwitchCollisionDetectionMode()
    {
        switch (m_Rigidbody.collisionDetectionMode)
        {
            //If the current mode is continuous, switch it to continuous dynamic mode
            case CollisionDetectionMode.Continuous:
                m_Rigidbody.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
                break;
            //If the current mode is continuous dynamic, switch it to discrete mode
            case CollisionDetectionMode.ContinuousDynamic:
                m_Rigidbody.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
                break;            // If the curren mode is continuous speculative, switch it to discrete mode
            case CollisionDetectionMode.ContinuousSpeculative:
                m_Rigidbody.collisionDetectionMode = CollisionDetectionMode.Discrete;
                break;            //If the current mode is discrete, switch it to continuous mode
            case CollisionDetectionMode.Discrete:
                m_Rigidbody.collisionDetectionMode = CollisionDetectionMode.Continuous;
                break;
        }
    }
}
```
