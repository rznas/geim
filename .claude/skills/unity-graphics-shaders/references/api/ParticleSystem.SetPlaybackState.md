<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SetPlaybackState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playbackState | The PlaybackState to apply to the Particle System. |

### Description

Use this method with the results of an earlier call to ParticleSystem.GetPlaybackState, in order to restore the Particle System to the state stored in the playbackState object.

To fully restore a Particle System to a previous state, use this method along with ParticleSystem.SetParticles and ParticleSystem.SetTrails.

Additional resources: GetPlaybackState, SetParticles, SetTrails.
