<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.AvailableData.Element.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A piece of temporary immutable type-erased data that was sent from ProcessorInstance.Pipe.SendData, received on likely another thread.

You can use ProcessorInstance.AvailableData.Element.TryGetData to test and extract a piece of typed data, if the current element matches it.

### Public Methods

| Method | Description |
| --- | --- |
| TryGetData | Test and return a piece of typed data if this ProcessorInstance.AvailableData.Element matches the type given. |
