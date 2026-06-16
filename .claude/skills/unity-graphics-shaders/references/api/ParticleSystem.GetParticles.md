<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.GetParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| particles | Output particle buffer, containing the current particle state. |
| size | The number of elements that are read from the Particle System. |
| offset | The offset into the active particle list, from which to copy the particles. |

### Returns

**int** The number of particles written to the input particle array (the number of particles currently alive).

### Description

Gets the particles of this Particle System.

This method is allocation free as long the input "particles" array is preallocated once (see example below). The method only gets the particles that are currently alive in the Particle System when it is called, so it may only get a small part of the particles array.

Additional resources: Particle, SetParticles.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ParticleFlow : MonoBehaviour
{
    ParticleSystem m_System;
    ParticleSystem.Particle[] m_Particles;
    public float m_Drift = 0.01f;    private void LateUpdate()
    {
        InitializeIfNeeded();        // GetParticles is allocation free because we reuse the m_Particles buffer between updates
        int numParticlesAlive = m_System.GetParticles(m_Particles);        // Change only the particles that are alive
        for (int i = 0; i < numParticlesAlive; i++)
        {
            m_Particles[i].velocity += Vector3.up * m_Drift;
        }        // Apply the particle changes to the Particle System
        m_System.SetParticles(m_Particles, numParticlesAlive);
    }    void InitializeIfNeeded()
    {
        if (m_System == null)
            m_System = GetComponent<ParticleSystem>();        if (m_Particles == null || m_Particles.Length < m_System.main.maxParticles)
            m_Particles = new ParticleSystem.Particle[m_System.main.maxParticles];
    }
}
```
