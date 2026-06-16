<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options that choose which animations to stop when playing an animation.

Methods use this enum to choose which animations to stop based on the layer or component of the started animation. For example, the Animation.Play method uses `StopSameLayer` to stop animations on the same layer as the started animation. This method uses `StopAll` to stop animations associated with the same Animation component as the started animation. Additional resources: Animation.CrossFade, Animation.CrossFadeQueued, Animation.Play, Animation.PlayQueued.

```csharp
// The following example demonstrates animation layers and how to use the PlayMode enum to animate a collectable coin.

// The coin has four animation clips:
//  1. Spin: A looping animation where the coin rotates on the y-axis.
//  2. Slide: A looping animation where the coin moves back and forth.
//  3. Bop: The coin moves upwards.
//  4. Poof: The coin disappears with an effect.

// The coin behaves as follows:
//  1. The coin slides while spinning.
//  2. If collected by the player, the coin moves upwards while spinning.
//  3. If missed by the player, the coin stops spinning and disappears with an effect.

using System.Collections;
using UnityEngine;

[RequireComponent(typeof(Animation))]
public class PlayModeExample : MonoBehaviour
{
    // Determines whether the coin was successfully collected.
    // True plays the coin collected animation. False plays the coin missed animation.
    public bool collectCoin;

    public float waitTime = 0.8f; // Length of the timer used for testing the coin collected and coin missed animations.

    Animation m_AnimComponent;

    void Start()
    {
        m_AnimComponent = GetComponent<Animation>();

        // Slide and Bop need to be played in parallel to Spin, so they are set on different layers.
        // Spin is on the default layer which is 0.
        m_AnimComponent["Slide"].layer = 1;
        m_AnimComponent["Bop"].layer = 1;

        PlayCoinSlideAnimations();

        // Ideally, PlayCoinCollectedAnimation() should be called when the player collides with the coin
        // and PlayCoinMissedAnimation() should be called at the end of the coin's lifetime, but
        // this would make the example too long. Instead, this coroutine provides a quick test while
        // Spin and Slide are playing.
        StartCoroutine(CollectOrHideCoinAfterDelay(waitTime));
    }

    void PlayCoinSlideAnimations()
    {
        // Since no value for PlayMode is passed, PlayMode.StopSameLayer is used by default.
        m_AnimComponent.Play("Spin");

        // Slide needs to be played concurrently to Spin, so PlayMode.StopSameLayer is used instead of PlayMode.StopAll.
        // StopAll would have stopped the Spin animation.
        m_AnimComponent.Play("Slide");
    }

    IEnumerator CollectOrHideCoinAfterDelay(float time)
    {
        yield return new WaitForSeconds(time);

        if(collectCoin)
            PlayCoinCollectedAnimation();
        else
            PlayCoinMissedAnimation();
    }

    void PlayCoinCollectedAnimation()
    {
        // Since Bop is on the same layer as Slide, it stops Slide but not Spin since PlayMode.StopSameLayer is implicitly used here.
        m_AnimComponent.Play("Bop");
    }

    void PlayCoinMissedAnimation()
    {
        // Since PlayMode.StopAll is used here, both Spin and Slide stop and only Poof plays.
        m_AnimComponent.Play("Poof", PlayMode.StopAll);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| StopSameLayer | Stops animations on the same layer as the started animation. This is the default behavior. |
| StopAll | Stops animations played by the same component as the started animation. |
