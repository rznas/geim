<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AudioCompressor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Audio Compressor Effect

The **Audio Compressor Effect** reduces the volume of loud sounds or amplifies quiet sounds by narrowing or “compressing” an audio signal’s dynamic range.

This compressor is a limiter with a fixed ratio of ∞:1. This means that the compressor clamps the signal output when it reaches the threshold.

## Properties

| ***Property:*** | ***Function:*** |
| --- | --- |
| **Threshold** | Threshold level in dB (range 0 to –60dB, default = 0dB). |
| **Attack** | The rate the effect is applied in ms. (range 10.0 to 200.0 ms, default = 50.0 ms). |
| **Release** | The rate the effect is released in ms. (range 20.0 to 1000.0 ms, default = 50.0 ms). |
| **Make up gain** | Make up gain level in dB (range 0 to 30dB, default = 0dB). |

AudioCompressor
