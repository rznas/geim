<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/coroutines-section.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Split tasks across frames with coroutines

A coroutine is a method that can suspend execution and resume at a later time. In Unity, this means coroutines can start running in one frame and then resume in another, allowing you to spread tasks across several frames.

| **Topic** | **Description** |
| --- | --- |
| **Write and run coroutines** | Write and run coroutine methods to do work that takes effect over several frames, such as a gradual fade-out effect. |
| **Analyzing coroutines** | Analyze coroutine performance in the Unity Profiler. |
| **Yield instruction reference** | Yield different custom instructions in your coroutine methods to control when they resume. |

## Additional resources

- Per frame updates
- PlayerLoop API reference
