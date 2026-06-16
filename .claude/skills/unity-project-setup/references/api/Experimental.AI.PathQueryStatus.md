<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.PathQueryStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bit flags representing the resulting state of NavMeshQuery operations.

The main values are `Success`, `Failure` and `InProgress`. A status will usually have only one of these main flags set. The secondary flags (details) are set when specific issues have been encountered during the operation. `StatusDetailMask` is a bit mask that can be used to filter out these secondary flags.

**Note:** Issues highlighted by the presence of certain detail flags in certain situations might refer to internal structures outside the control of users, thus they will not always be able to mitigate them by taking the necessary actions in their code. Ways for handling these situations will be made available in the future.
