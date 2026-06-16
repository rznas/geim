<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control data communication, scripting-, creation-, destruction- and data query of ProcessorInstances in an audio system.

A ControlContext effectively represents an instance of an audio system, and is responsible for synchronizing efficient and deterministic data communication between a controlling thread and a realtime audio rendering thread. Use ControlContext.builtIn for scripting the shared audio system Unity uses, or use ControlContext.CreateManualControlContext for exercising your own auxillary system.

### Static Properties

| Property | Description |
| --- | --- |
| builtIn | The default provided ControlContext which is used and updated in tandem with Unity's built-in audio system. |

### Properties

| Property | Description |
| --- | --- |
| IsSystemWideReconfiguring | Returns true if the audio system is currently performing a system-wide reconfiguration. |

### Public Methods

| Method | Description |
| --- | --- |
| AllocateGenerator | Allocate a GeneratorInstance with the specified realtime and control state. |
| AllocateRootOutput | Allocate a RootOutputInstance with the specified processor and control state. |
| Configure | Manually reconfigure this GeneratorInstance with the given . |
| Destroy | Destroy a GeneratorInstance previously allocated with ControlContext.AllocateGenerator. |
| Exists | Test whether is valid and belongs to this ControlContext. |
| GetConfiguration | Get the declared configuration runs in. |
| IsGenerator | Test whether is a GeneratorInstance built from a TRealtime and TControl. |
| IsRootOutput | Test whether is a RootOutputInstance built from a TRealtime and TControl. |
| SendMessage | Send a message with a piece of data to be immediately evaluated by the ProcessorInstance.IControl_1.OnMessage. |
| Update | Manually update this GeneratorInstance. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateManualControlContext | Create a new ControlContext with additional functionality you can drive manually. |
| WaitForBuiltInQueueFlush | Forcefully wait for any commands created on builtIn or on any derivative objects to have taken effect. |
