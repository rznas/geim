<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnParticleUpdateJobScheduled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnParticleUpdateJobScheduled is called when a Particle System's built-in update job has been scheduled.

This can be used to attach custom managed jobs to run after the default particle update.

```csharp
using UnityEngine;
using UnityEngine.ParticleSystemJobs;public class JobScript : MonoBehaviour
{
    void OnParticleUpdateJobScheduled()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        new UpdateParticlesJob { m_DeltaTime = Time.deltaTime }.Schedule(ps);
    }    struct UpdateParticlesJob : IJobParticleSystem
    {
        public float m_DeltaTime;        public void Execute(ParticleSystemJobData particles)
        {
            var positionsY = particles.positions.x;            for (int i = 0; i < particles.count; i++)
            {
                positionsY[i] += 3.0f * m_DeltaTime;
            }
        }
    }
}
```

In order to retrieve detailed information about all the collisions caused by the ParticleSystem, ParticlePhysicsExtensions.GetTriggerParticles must be used to retrieve the array of Particle.
