<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioLowPassSimpleEffect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Audio Low Pass Simple Effect

The **Audio Low Pass Simple Effect** passes low frequencies of an AudioMixer group while removing frequencies higher than the **Cutoff Frequency**.

## Properties

| ***Property:*** | ***Function:*** |
| --- | --- |
| **Cutoff freq** | Lowpass cutoff frequency in Hertz (range 10.0 to 22000.0, default = 5000.0). |

## Details

The **Resonance** (short for Lowpass Resonance Quality Factor) determines how much the filter’s self-resonance is dampened. Higher lowpass resonance quality indicates a lower rate of energy loss, that is the oscillations die out more slowly.

For additional control over the resonance value of the low pass filter use the Audio Low Pass effect.

AudioLowPassSimpleEffect
