<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.BeginSampling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initialise the start of the animation clip sampling.

BeginSampling arranges for the ::SampleAnimationClip to operate correctly. Not calling BeginSampling prevents the animation data to be sampled. This function must be called immediately before the SampleAnimationClip is called. See the script example on the AnimationMode page to see this behaviour.
