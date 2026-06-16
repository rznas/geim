<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use when adding layers. It is not used to create the composer itself which must be destroyed. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**PhysicsComposer** The new Physics Composer.

### Description

Create a Physics Composer. NOTE: The composer implements System.IDisposable which allows you to use the "using" statement on the returned composer object to ensure it's disposed in the current scope which is only useful when using the Allocator.Temp allocator. However, because the composer is a struct, System.IDisposable will not be called automatically so in this case disposing or simply calling PhysicsComposer.Destroy must be done explicitly.
