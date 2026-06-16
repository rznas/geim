<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionDetectionMode.ContinuousSpeculative.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Speculative continuous collision detection is on for static and dynamic geometries

This is a collision detection mode that can be used on both dynamic and kinematic objects. It is generally cheaper than other CCD mode. It also handles angular motion much better. However, in some cases, high speed objects may still tunneling through other geometries.

```csharp
//This script allows you to switch collision detection mode at the press of the space key, and move your GameObject. It also outputs collisions that occur to the console.
//Attach this script to a GameObject and make sure it has a Rigidbody component
//If it doesn't have a Rigidbody component, click the GameObject, go to its Inspector and click the Add Component button. Then, go to Physics>Rigidbody.
//Create another GameObject. Make sure it has a Collider, so you can test collisions between them.using UnityEngine;
using UnityEngine.InputSystem;
                        
public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;    void Start()
    {
        //Attach this script to a GameObject. Ensure that it has a Rigidbody component.
        m_Rigidbody = GetComponent<Rigidbody>();
    }    void Update()
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
            //If the current mode is continuous dynamic, switch it to continuous speculative
            case CollisionDetectionMode.ContinuousDynamic:
                m_Rigidbody.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
                break;            // If the current mode is continuous speculative, switch it to discrete mode
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
