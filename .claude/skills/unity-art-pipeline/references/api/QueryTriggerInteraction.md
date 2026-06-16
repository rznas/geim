<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QueryTriggerInteraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Overrides the global Physics.queriesHitTriggers.

Overrides the global Physics.queriesHitTriggers to specify whether queries (raycasts, spherecasts, overlap tests, etc.) hit Triggers by default. Use Ignore for queries to ignore trigger Colliders.

```csharp
//Create two GameObjects (e.g. a Cube) and place them near each other. Attach this script to one of them.
//Click on the GameObject with the script. Attach the other GameObject to the “My Game Object” field in the Inspector.
//Make sure both have Collider components
//Choose your own “Max Distance” in the Inspector (e.g. 600).//This script casts a ray that ignores Trigger Colliders.
//Press space to switch the second GameObject between a Trigger and non-Trigger GameObject. When the Trigger is off, the ray detects a collision. When it is on, no collisions occur.using UnityEngine;public class Example : MonoBehaviour
{
    //The maximum distance from your GameObject. Make sure to set this in the Inspector
    public float m_MaxDistance;
    public LayerMask m_Mask = -1;    //Assign a GameObject in the Inspector that you want to test collisions with
    public GameObject m_MyGameObject;
    //This is the Collider of the GameObject you assign in the Inspector
    Collider m_OtherGameObjectCollider;    void Start()
    {
        //Fetch the Collider from the GameObject you assign in the Inspector
        m_OtherGameObjectCollider = m_MyGameObject.GetComponent<Collider>();
    }    void FixedUpdate()
    {
        //Set the direction as forward
        Vector3 direction = transform.TransformDirection(Vector3.forward);        //Use Physics to calculate the raycast
        //Uses your GameObject's original position, the direction (above), the max distance from your GameObject, and the LayerMask value to calculate raycast.
        //Also tells it to ignore trigger colliders using QueryTriggerInteraction
        if (Physics.Raycast(transform.position, direction, m_MaxDistance, m_Mask.value, QueryTriggerInteraction.Ignore))
            print("There is something in front of the object!");
    }    void Update()
    {
        //Press space to turn the other GameObject's trigger status on and off
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Test if the trigger collisions are ignored by turning the GameObject's trigger collider on and off
            m_OtherGameObjectCollider.isTrigger = !m_OtherGameObjectCollider.isTrigger;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| UseGlobal | Queries use the global Physics.queriesHitTriggers setting. |
| Ignore | Queries never report Trigger hits. |
| Collide | Queries always report Trigger hits. |
