<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.LocalPhysicsMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides options for 2D and 3D local physics.

By default, when a Scene is created or loaded, any 2D or 3D physics component added to a GameObject within the Scene is added to the default physics Scene. Each Scene however has the ability to create and own its own (local) 2D and/or 3D physics Scene. This option can be used when creating or loading a Scene to specify whether a 2D and/or 3D physics Scene should be created.

When a Scene creates its own 2D and/or 3D physics Scene, the lifetime of the physics Scene(s) is the same as the Scene i.e. if the Scene is destroyed/unloaded then so are any created physics Scenes.

Additional resources: CreateSceneParameters, LoadSceneParameters, SceneManager.CreateScene, SceneManager.LoadScene and SceneManager.LoadSceneAsync.

### Properties

| Property | Description |
| --- | --- |
| None | No local 2D or 3D physics Scene will be created. |
| Physics2D | A local 2D physics Scene will be created and owned by the Scene. |
| Physics3D | A local 3D physics Scene will be created and owned by the Scene. |
