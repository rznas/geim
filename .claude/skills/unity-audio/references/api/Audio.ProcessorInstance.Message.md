<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.Message.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A by-reference wrapper around something sent from ControlContext.SendMessage.

Since this has no defined type, you will need to test with Message.Is to discern between different message types being delivered to you.

### Public Methods

| Method | Description |
| --- | --- |
| Get | Return a reference to the inner piece of data. You can modify this and the effects will be visible to the original message sender. |
| Is | Test whether this Message is of T. |
