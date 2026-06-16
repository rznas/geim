<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** If no name is supplied and there is no default animation, then this method returns `false`. Otherwise, it returns `true`.

### Description

Plays an animation without blending.

If no name is supplied then the default animation plays. Use the optional PlayMode to choose how this animation affects animations already playing.

If the specified animation is already playing then other animations will be stopped but the animation will not rewind to the beginning. When the end of the animation is reached it will automatically be stopped and rewound to the start unless the PlayMode is set to Loop. If Animation.Play is called on an object during a frame update where the object is also deactivated then the call will effectively be cancelled. The animation will not start playing when the object is later reactivated. However, if a call on a subsequent frame (while the object is still inactive) then the animation will start playing after reactivation.

To use Animation.Play the animation data must be visible in the Inspector window. This window contains all animations for a GameObject in an array. As an example two animations `jump` and `spin` are stored in the Animations list. Animation.Play can play each of these animations. Animation can also combine animations. An (unsupported and undocumented) AnimationState.`layer` is used for this. For example leaving `jump` at layer zero and moving `spin` to layer 123 will allow them to be played together.

Animations must be marked as ‘Legacy’ in the Inspector for the animations to be found by this method. This option appears after switching the Inspector Window to ‘Debug’.

```csharp
using UnityEngine;// Animation.Play example. Let the S and J keys start
// a spin or jump animation. Let Space play back spin and
// jump at the same time. Let Z play spin and jump with
// spin doubled in speed.
//
// Spin: rotate the cube 360 degrees in half or one second
// Jump: bounce up to 2 units and down in one second
//
// Note: AnimationState.layer is no longer supported, but still exists.public class ExampleScript : MonoBehaviour
{
    private Animation anim;    void Start()
    {
        anim = gameObject.GetComponent<Animation>();
        anim["spin"].layer = 123;
    }    // double the spin speed when true
    private bool fastSpin = false;    void Update()
    {
        // leave spin or jump to complete before changing
        if (anim.isPlaying)
        {
            return;
        }        if (Input.GetKeyDown(KeyCode.S))
        {
            Debug.Log("Spinning");
            anim.Play("spin");
        }        if (Input.GetKeyDown(KeyCode.J))
        {
            Debug.Log("Jumping");
            anim.Play("jump");
        }        // combine jump and spin
        if (Input.GetKeyDown(KeyCode.Space))
        {
            Debug.Log("Jumping and spinning");
            anim.Play("jump");
            anim.Play("spin");
        }        // have spin speed reverted to 1.0 second
        if (fastSpin == true)
        {
            anim["spin"].speed = 1.0f;
            fastSpin = false;
        }        if (Input.GetKeyDown(KeyCode.Z))
        {
            Debug.Log("Jumping and spinning in half a second");
            anim.Play("jump");
            anim["spin"].speed = 2.0f;
            anim.Play("spin");            // we've used spin at a speed of two, now mark
            // the spin speed to revert back to one
            fastSpin = true;
        }
    }
}
```
