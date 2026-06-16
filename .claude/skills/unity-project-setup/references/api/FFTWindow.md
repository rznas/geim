<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FFTWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Spectrum analysis windowing types.

Use this to reduce leakage of signals across frequency bands.

### Properties

| Property | Description |
| --- | --- |
| Rectangular | W[n] = 1.0. |
| Triangle | W[n] = 1 - abs(2n/N - 1). |
| Hamming | W[n] = 0.54 - 0.46 * cos(2π * n/N). |
| Hanning | W[n] = 0.5 * (1.0 - cos(2π * n/N)). |
| Blackman | W[n] = 0.42 - 0.5 * cos(2π * n/N) + 0.08 * cos(4π * n/N). |
| BlackmanHarris | W[n] = 0.35875 - 0.48829 * cos(2π * n/N) + 0.14128 * cos(4π * n/N) - 0.01168 * cos(6π * n/N). |
