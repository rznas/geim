<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClusterNetwork-isDisconnected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Check whether the current instance is disconnected from the cluster network.

A **client node** is disconnected when it fails to receive a signal within a timeout period while a **master node** is disconnected when it fails to receive a signal from all its client nodes within a timeout period. Note that a disconnected instance continues running and does not terminate itself.
