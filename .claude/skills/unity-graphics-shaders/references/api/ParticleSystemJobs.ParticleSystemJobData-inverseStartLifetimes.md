<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemJobs.ParticleSystemJobData-inverseStartLifetimes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The lifetime of each particle, stored as 1.0f / lifetime.

There are more cases in the native code where we wish to divide by lifetime, rather than multiply by it. Therefore, storing the reciprocal allows us to perform efficent multiplies, rather than slow divides, in the majority of use-cases.
