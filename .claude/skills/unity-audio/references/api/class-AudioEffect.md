<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioEffect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use audio filters

You can modify the output of Audio Source and Audio Listener components by applying **Audio Effects**. These can filter the frequency ranges of the sound or apply reverb and other effects.

The effects are applied by adding effect components to the object with the Audio Source or Audio Listener. The ordering of the components is important, since it reflects the order in which the effects will be applied to the source audio. For example, in the image below, an Audio Listener is modified first by an **Audio Low Pass Filter** and then an Audio Chorus Filter.

To change the ordering of these and any other components, open a context menu in the **inspector** and select the *Move Up* or *Move Down* commands. Enabling or disabling an effect component determines whether it will be applied or not.

Though highly optimized, some filters are still CPU intensive. Audio CPU usage can monitored in the profiler under the Audio Tab.

See the other pages in this section for further information about the specific filter types available.

AudioEffect
