<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionDetectionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The collision detection mode constants used for Rigidbody.collisionDetectionMode.

```csharp
//This script allows you to switch collision detection mode at the press of the space key, and move your GameObject. It also outputs collisions that occur to the console.
//Attach this script to a GameObject and make sure it has a Rigidbody component
//If it doesn't have a Rigidbody component, click the GameObject, go to its Inspector and click the Add Component button. Then, go to Physics>Rigidbody.
//Create another GameObject. Make sure it has a Collider, so you can test collisions between them.using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    private Rigidbody rb;
    private float moveSpeed = 5f;    [Header("Input Actions")]
    public InputActionReference moveAction;    private void OnEnable()
    {
        moveAction.action.Enable();
    }    private void OnDisable()
    {
        moveAction.action.Disable();
    }
    
    void Start()
    {
        //Fetch the Rigidbody of the GameObject (make sure this is attached in the Inspector window)
        rb = GetComponent<Rigidbody>();
        //Make sure the Rigidbody can't rotate or move in the z axis for this example
        rb.constraints = RigidbodyConstraints.FreezeRotation | RigidbodyConstraints.FreezePositionZ;
    }    void Update()
    {
        //Change the GameObject's movement in the X axis
        float translationX = moveAction.action.ReadValue<Vector2>().x * moveSpeed;
        //Change the GameObject's movement in the Y axis
        float translationY = moveAction.action.ReadValue<Vector2>().y * moveSpeed;        //Move the GameObject
        transform.Translate(new Vector3(translationX, translationY, 0));        //Press the space key to switch the collision detection mode
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
            SwitchCollisionDetectionMode();
    }    //Detect when there is a collision starting
    void OnCollisionEnter(Collision collision)
    {
        //Ouput the Collision to the console
        Debug.Log("Collision : " + collision.gameObject.name);
    }    //Detect when there is are ongoing Collisions
    void OnCollisionStay(Collision collision)
    {
        //Output the Collision to the console
        Debug.Log("Stay : " + collision.gameObject.name);
    }    //Switch between the different Collision Detection Modes
    void SwitchCollisionDetectionMode()
    {
        switch (rb.collisionDetectionMode)
        {
            //If the current mode is continuous, switch it to continuous dynamic mode
            case CollisionDetectionMode.Continuous:
                rb.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
                break;
            //If the current mode is continuous dynamic, switch it to continuous speculative
            case CollisionDetectionMode.ContinuousDynamic:
                rb.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
                break;            // If the current mode is continuous speculative, switch it to discrete mode
            case CollisionDetectionMode.ContinuousSpeculative:
                rb.collisionDetectionMode = CollisionDetectionMode.Discrete;
                break;            //If the current mode is discrete, switch it to continuous mode
            case CollisionDetectionMode.Discrete:
                rb.collisionDetectionMode = CollisionDetectionMode.Continuous;
                break;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Discrete | Continuous collision detection is off for this Rigidbody. |
| Continuous | Continuous collision detection is on for colliding with static mesh geometry. |
| ContinuousDynamic | Continuous collision detection is on for colliding with static and dynamic geometry. |
| ContinuousSpeculative | Speculative continuous collision detection is on for static and dynamic geometries |
