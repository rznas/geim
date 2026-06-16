<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SubEmittersModule.SetSubEmitterEmitProbability.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the sub-emitter you want to modify. |
| emitProbability | The probability value. |

### Description

Sets the probability that the sub-emitter emits particles.

Accepts a value from 0 to 1, where 0 is never and 1 is always.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // A simple particle material with no texture.
        var particleMaterial = new Material(Shader.Find("Particles/Standard Surface"));        // Emit 1 particle per second.
        var particleSystemGameObject = new GameObject("Particle System");
        var particleSystemMain = particleSystemGameObject.AddComponent<ParticleSystem>();
        var emitMain = particleSystemMain.emission;
        emitMain.rateOverTime = 1;
        particleSystemGameObject.GetComponent<ParticleSystemRenderer>().material = particleMaterial;        // Create a sub-emitter with a 10% chance to emit a red particle when "Particle System" emits.
        var subEmitterGo = new GameObject("Sub Emitter");
        subEmitterGo.transform.SetParent(particleSystemGameObject.transform);
        var subEmitter = subEmitterGo.AddComponent<ParticleSystem>();
        var emitSub = subEmitter.emission;
        emitSub.rateOverTime = 0;
        emitSub.burstCount = 1;
        emitSub.SetBurst(0, new ParticleSystem.Burst(0, 1));
        var mainModule = subEmitter.main;
        mainModule.startColor = Color.red;
        subEmitterGo.GetComponent<ParticleSystemRenderer>().material = particleMaterial;        // Add the sub-emitter, and set the probability.
        var subEmittersModule = particleSystemMain.subEmitters;
        subEmittersModule.enabled = true;
        subEmittersModule.AddSubEmitter(subEmitter, ParticleSystemSubEmitterType.Birth, new ParticleSystemSubEmitterProperties(), 0.1f);
    }
}
```
