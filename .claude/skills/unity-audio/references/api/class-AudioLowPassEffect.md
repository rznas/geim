<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioLowPassEffect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Audio Low Pass Effect

The **Audio Low Pass Effect** passes low frequencies of an AudioMixer group while removing frequencies higher than the **Cutoff Frequency**.

## Properties

| ***Property:*** | ***Function:*** |
| --- | --- |
| **Cutoff freq** | Lowpass cutoff frequency in Hertz (range 10.0 to 22000.0, default = 5000.0). |
| **Resonance** | Lowpass resonance quality value (range 1.0 to 10.0, default = 1.0). |

## Details

The **Resonance** (short for Lowpass Resonance Quality Factor) determines how much the filter’s self-resonance is dampened. Higher lowpass resonance quality indicates a lower rate of energy loss, that is the oscillations die out more slowly.

AudioLowPassEffect
