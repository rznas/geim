<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.GetTrails.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Trails** The variable to populate with the Trails that currently belong to the Particle System..

### Description

Returns all the data relating to the current internal state of the Particle System Trails.

If you want to restore the Particle System to its current state in the future, store the Trails this function returns along with ParticleSystem.GetParticles and ParticleSystem.GetPlaybackState.

Additional resources: Trails, SetTrails, GetPlaybackState.

### Parameters

| Parameter | Description |
| --- | --- |
| trailData | The current Trails belonging to the Particle System. |

### Returns

**int** The number of trails.

### Description

If you want to restore the Particle System to its current state in the future, store the Trails this function returns along with ParticleSystem.GetParticles and ParticleSystem.GetPlaybackState.

This method allows you to get the trail data without creating any garbage, if you presize the trail data.

Additional resources: Trails, SetTrails, GetPlaybackState.
