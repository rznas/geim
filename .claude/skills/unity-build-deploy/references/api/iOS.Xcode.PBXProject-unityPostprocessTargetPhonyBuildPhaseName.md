<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject-unityPostprocessTargetPhonyBuildPhaseName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of the placeholder build phase, which Unity adds to indicate a place to add **post-processing** actions.

Any build phases added after the placeholder build phase can safely assume that the target is built. For example, Unity adds symbols processing afterwards, which requires Application/Framework to be fully built.
