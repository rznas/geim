<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/audio-scriptable-processors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Scriptable audio pipeline

The scriptable audio pipeline framework lets you extend the Unity audio engine at specific integration points using Burst-compatible HPC#. The below sections explain what the scriptable audio pipeline is and how you can use it to customize and extend the audio system.

| **Topic** | **Description** |
| --- | --- |
| **Scriptable processors concepts** | Learn the core concepts required to work with scriptable processors. |
| **Generators** | Learn about generators. |
| **Root outputs** | Learn about root outputs. |
| **Example: create a generator** | Create a generator and attach it to an **audio source**. |
| **Example: create a root output** | Create a root output and connect it to the Unity audio engine. |

**Note**: The scriptable audio pipeline is not supported on the Web Platform. Attempting to use it in a Web build will trigger a warning.
