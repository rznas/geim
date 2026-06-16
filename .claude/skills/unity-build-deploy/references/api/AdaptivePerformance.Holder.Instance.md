<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Holder.Instance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default Adaptive Performance interface instance for accessing all Adaptive Performance functionality.

This property becomes available after calling Initialize and successful initialization. The instance remains available until Deinitialize is called.

 Check that this property isn't null and that IAdaptivePerformance.Initialized is true before using Adaptive Performance features.

 Setting this property triggers LifecycleEventHandler events when the value changes.
