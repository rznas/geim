<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.DisposeSentinel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains methods that automatically detect memory leaks.

The methods in `DisposeSentinel` are used by NativeContainer instances to automatically track memory leaks, and report them to you. However, you should use the UnsafeUtililty.MallocTracked method over `DisposeSentinel` where possible.

`DisposeSentinel` is a managed object that's only referenced by the `NativeContainer` that holds the native data that you don't want to leak. The `DisposeSentinel` finalizer is invoked when there aren't any references to the NativeContainer that owns it, and checks if the referenced data has been disposed correctly. If the data hasn't been disposed of correctly, `DisposeSentinel` logs an error containing the information about when the initial allocation happened.

`DisposeSentinel` creates garbage for the garbage collector to pick up, and any memory leaks are reported upon domain shutdown or reload.

You can only use the `DisposeSentinel` class when ENABLE_UNITY_COLLECTIONS_CHECKS is defined.

Additional resources: the example in NativeContainerAttribute.

### Static Methods

| Method | Description |
| --- | --- |
| Clear | Clears the DisposeSentinel. |
| Create | Creates a new AtomicSafetyHandle and a new DisposeSentinel, to be used to track safety and leaks on native data. |
| Dispose | Releases the AtomicSafetyHandle and clears the DisposeSentinel. |
