<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PartSysEmissionModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Emission module reference

The properties in this module affect the rate and timing of Particle System emissions.

## Properties

For some properties in this section, you can use different modes to set their value. For information on the modes you can use, refer to Vary Particle System properties over time.

| **Property** | **Function** |
| --- | --- |
| **Rate over Time** | The number of **particles** emitted per unit of time. |
| **Rate over Distance** | The number of particles emitted per unit of distance moved. |
| **Bursts** | A burst is an event which spawns particles. These settings allow particles to be emitted at specified times. |
| *Time* | Set the time (in seconds, after the Particle System begins playing) at which to emit the burst. |
| *Count* | Set a value for the number of particles that may be emitted. |
| *Cycles* | Set a value for how many times to play the burst. |
| *Interval* | Set a value for the time (in seconds) between when each cycle of the burst is triggered. |
| *Probability* | Controls how likely it is that each burst event spawns particles. A higher value makes the system produce more particles, and a value of 1 guarantees that the system produces particles. |

## Additional resources

- Particle emissions and emitters
