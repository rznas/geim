<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioEffectMixer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use audio effects

You can modify the output of Audio Mixer components by applying **Audio Effects**. These can filter the frequency ranges of the sound or apply reverb and other effects.

## Add audio effects to your mixer

To add an audio effect to your Audio Mixer, in the component, select **Add Effect**. Unity shows you a list of the following effects you can add to your mixer:

- LowPass
- HighPass
- Echo
- Flange
- Distortion
- Normalize
- Param EQ
- Pitch Shifter
- Chorus
- Compressor
- SFX Reverb
- LowPass Simple
- HighPass Simple

## Profile your audio effects

Though highly optimized, some filters are still CPU intensive. You can monitor audio CPU usage in the profiler under the **Audio** tab.

## Reorder audio effects

The ordering of the components is important, since it reflects the order in which the effects will be applied to the source audio. For example, in the image below, the Music section of an Audio Mixer is modified first by a Lowpass effect and then a compressor Effect, Flange Effect and so on.

To change the order of these and any other components, open a context menu in the **inspector** and select the *Move Up* or *Move Down* commands.

AudioEffectMixer
