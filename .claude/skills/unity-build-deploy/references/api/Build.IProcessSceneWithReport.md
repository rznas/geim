<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IProcessSceneWithReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this interface to receive a callback for each scene during the build.

If the scene or related content in the project is unchanged from the previous Player build, Unity doesn't build the scene and instead uses cached Player build data. In this case, the callback isn't called. For more information about build callbacks, refer to Use build callbacks.

### Public Methods

| Method | Description |
| --- | --- |
| OnProcessScene | Implement this method to receive a callback for each scene during the build. |
