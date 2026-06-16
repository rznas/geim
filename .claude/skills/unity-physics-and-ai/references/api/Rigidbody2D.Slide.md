<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.Slide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| velocity | The velocity to use when the Rigidbody2D is sliding. |
| deltaTime | The time to integrate the `velocity` over. |
| slideMovement | The configuration controlling of how the slide should be performed. |

### Returns

**SlideResults** The results of the slide movement.

### Description

Slide the Rigidbody2D using the specified `velocity` integrated over `deltaTime` using the configuration specified by `slideMovement`.

The intent of this method is to provide fairly sophisticated movement with minimal API. Movement includes sliding along surfaces within specific slope angles, surface snapping, gravity and slippage on slopes within certain angles. All contacts are handled automatically. This method can move a Rigidbody2D of any body type and either immediately change the position, defer the position change until the simulation step or simply return the calculated position.

The following is a completely breakdown of the logic of this mechanism:

The Rigidbody2D can be moved using the specified `velocity` integrated over the specified `deltaTime`. When this happens, any contacts with other Collider2D will cause the appropriate change in direction (velocity) to occur with no friction or bounce used. This change in direction and subsequent continuation of movement using the remaining velocity after the contact is known as a "slide". This is a single slide iteration. A "slide" will only occur if the slope angle fo the surface is less than that defined by Rigidbody2D.SlideMovement.surfaceSlideAngle. The maximum number of slide iterations allowed is controlled by Rigidbody2D.SlideMovement.maxIterations.

When a slide iteration occurs, the velocity used to perform the move may cause the Rigidbody2D to move away from a Collider2D surface. This would be seen if the slide moves over a small ramp or is directed away from a surface when moving down a slope. Often, this is not an intended behaviour so to counter this, Rigidbody2D.SlideMovement.surfaceAnchor can be used to specify, during each iteration, the direction and distance the slide iteration should look for a surface. Using this, the slide can stay permanently "anchored" to a surface, even if the velocity is moving it away. If this behaviour is not required then the Rigidbody2D.SlideMovement.surfaceAnchor can be set to Vector2.zero.

The slide behavior will occur using multiple iterations until one of two conditions are met:

- The maximum number of iterations controlled by Rigidbody2D.SlideMovement.maxIterations has been reached.
- The reamining distance has reached zero (as defined by the magnitude of the `velocity` (speed) over the `deltaTime` specified).

When the slide movement is complete as defined above, any gravity behaviour requested will be handled if the provided Rigidbody2D.SlideMovement.gravity vector has a megnitude greater than zero. In this case, the Rigidbody2D is moved by the Rigidbody2D.SlideMovement.gravity scaled by the `deltaTime` specified. If the gravity movement causes a contact to be found, the Rigidbody2D is moved to that position.

After this initial gravity movement, another slide iteration may occur in an attempt to use all the remaining gravity movement. This extra gravity slide iteration (slippage) will only occur if the following conditions are all met:

- The contact is a surface whose slope angle is less than the slip angle defined by Rigidbody2D.SlideMovement.gravitySlipAngle.
- No initial `velocity` is specified i.e. no slip if movement is requested so slippage doesn't counter that movement.

In summary, calling the slide method using gravity will result in the Rigidbody2D moving with gravity but if no `velocity` is specified, the Rigidbody2D will slide/slip according to the surface slope threshold specified by Rigidbody2D.SlideMovement.surfaceSlipAngle.

When the previously described behaviour is complete, a new Rigidbody2D position has been calculated however, the Rigidbody2D hasn't actually been moved at this stage. It is here that the Rigidbody2D can be instantly positioned at the new position or the move can be deferred using Rigidbody2D.MovePosition. This is controlled with Rigidbody2D.SlideMovement.useSimulationMove. When this is enabled, Rigidbody2D.MovePosition is used whereas when disabled, the Rigidbody2D is instantly set at its new position. It should be noted that both the Rigidbody2D and the Transform will be updated when Rigidbody2D.SlideMovement.useSimulationMove is disabled and that any Rigidbody2D interpolation continues to work as expected.

The remaining configuration options allow more detailed control over the the slide functionality. These are:

- Rigidbody2D.SlideMovement.startPosition can be used to override the start position of the slide, overriding the current Rigidbody2D.position.
- Rigidbody2D.SlideMovement.layerMask can be used to override which Collider2D are detected.
- Rigidbody2D.SlideMovement.useAttachedTriggers can be used to select whether any Collider2D attached to this Rigidbody2D (that are configured as a trigger) are used to detect contacts.
- Rigidbody2D.SlideMovement.selectedCollider can be used to select a specific Collider2D attached to this Rigidbody2D to be used to detect contacts. If this is selected, the Rigidbody2D.SlideMovement.useTriggers is ignored.

**Note:** The slide method can be used on any RigidbodyType2D but is mainly intended for use when the Rigidbody2D is Kinematic. No body type will interfere with the slide method but using a Dynamic mode might produce unexpected results because such a Rigidbody2D can have their own gravity, forces, collision-response etc. There is no performance penalty in using any body type, Kinematic, Static or Dynamic and all are valid if required. The Dynamic body type simply requires careful configuration so that its inherent features don't cause conflicting and unexpected movement behaviour.

 The following code uses a simple left/right keyboard input to set the relative velocity left or right. The slide method will slide the Rigidbody2D using the configuration specified in the SlideMovement and return the results of the slide in SlideResults:

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Rigidbody2D.SlideMovement SlideMovement = new Rigidbody2D.SlideMovement();
    public Rigidbody2D.SlideResults SlideResults;    public float HorizontalSpeed = 2f;    private Rigidbody2D m_Rigidbody;    void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody2D>();
   }    void Update()
    {
        // Calculate the horizontal velocity from keyboard input.
        var horizontalInput = (Input.GetKey(KeyCode.LeftArrow) ? -1 : 0f) + (Input.GetKey(KeyCode.RightArrow) ? 1f : 0f);
        var velocity = new Vector2(horizontalInput * HorizontalSpeed, 0f);        // Slide the rigidbody.
        SlideResults = m_Rigidbody.Slide(velocity, Time.deltaTime, SlideMovement);
    }
}
```
