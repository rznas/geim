<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-textureSheetAnimation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the TextureSheetAnimationModule of a Particle System.

This module allows you to add animations to your particle textures. This is achieved by authoring flipbook textures.


 *A flipbook texture sheet that contains eight sub-images of the numbers 1-8 across two rows of four columns. The first row contains the numbers 1-4 and the second row contains the numbers 5-8.*

Each numbered region represents a frame of the animation, and must be distributed evenly across the texture. Select a variable below to see script examples. You may want to use this texture on your Particle System with each example, to see how the module works.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var ts = ps.textureSheetAnimation;
            ts.enabled = true;
        ts.numTilesX = 2;
        ts.rowMode = ParticleSystemAnimationRowMode.Random;
    }
}
```
