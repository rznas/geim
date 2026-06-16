<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the CustomDataModule of a Particle System.

Additional resources: ParticleSystem, ParticleSystem.customData.

### Properties

| Property | Description |
| --- | --- |
| enabled | Specifies whether the CustomDataModule is enabled or disabled. |

### Public Methods

| Method | Description |
| --- | --- |
| GetColor | Get a MinMaxGradient, that is being used to generate custom HDR color data. |
| GetMode | Find out the type of custom data that is being generated for the chosen data stream. |
| GetVector | Get a MinMaxCurve, that is being used to generate custom data. |
| GetVectorComponentCount | Query how many MinMaxCurve elements are being used to generate this stream of custom data. |
| SetColor | Set a MinMaxGradient, in order to generate custom HDR color data. |
| SetMode | Choose the type of custom data to generate for the chosen data stream. |
| SetVector | Set a MinMaxCurve, in order to generate custom data. |
| SetVectorComponentCount | Specify how many curves are used to generate custom data for this stream. |
