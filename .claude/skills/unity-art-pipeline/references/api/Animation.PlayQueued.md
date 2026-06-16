<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.PlayQueued.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Plays an animation after previous animations has finished playing.

For example you might play a specific sequence of animations after each other.

The animation state duplicates itself before playing thus you can fade between the same animation. This can be used to overlay two same animations. For example you might have a sword swing animation. The player slashes two times quickly after each other. You could rewind the animation and play from the beginning but then you will get a jump in the animation.

The following queue modes are available: 
 If `queue` is QueueMode.CompleteOthers this animation will only start once all other animations have stopped playing. 
 If `queue` is QueueMode.PlayNow this animation will start playing immediately on a duplicated animation state.

After the animation has finished playing it will automatically clean itself up. Using the duplicated animation state after it has finished will result in an exception.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Animation anim = GetComponent<Animation>();        //Queues each of these animations to be played one after the other
        anim.PlayQueued("CubeBob", QueueMode.CompleteOthers);
        anim.PlayQueued("CubeFlip", QueueMode.CompleteOthers);
        anim.PlayQueued("CubeShuffle", QueueMode.CompleteOthers);
    }
}
```
