<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-processorFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The processor frequency of the device in MHz (Read Only).

Returns the nominal CPU frequency in MHz, or zero if unknown. The actual CPU frequency might vary depending on device's current load and power conditions, especially on low-powered devices such as phones and laptops.

**Notes:**

- iOS and WebGL platforms do not support querying CPU frequency.
- Some devices might indicate inaccurate processor frequency values to Unity. It's recommended to account for the possibility of inaccuracies when using this property.

Additional resources: SystemInfo.processorCount, SystemInfo.processorType.
