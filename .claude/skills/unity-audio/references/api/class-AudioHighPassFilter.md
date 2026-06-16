<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioHighPassFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Audio High Pass Filter

The **Audio High Pass Filter** passes high frequencies of an AudioSource and cuts off signals with frequencies lower than the **Cutoff Frequency**.

## Properties

| ***Property:*** | ***Function:*** |
| --- | --- |
| **Cutoff Frequency** | Highpass cutoff frequency in Hertz (range 10.0 to 22000.0, default = 5000.0). |
| **Highpass Resonance Q** | Highpass resonance quality value (range 1.0 to 10.0, default = 1.0). |

## Details

The **Highpass resonance Q** (short for Highpass Resonance Quality Factor) determines how much the filter’s self-resonance is dampened. Higher highpass resonance quality indicates a lower rate of energy loss, that is the oscillations die out more slowly.

AudioHighPassFilter
