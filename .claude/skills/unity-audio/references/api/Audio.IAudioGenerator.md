<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.IAudioGenerator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Factory for instantiating GeneratorInstance to be used internally or from other scripts.

IAudioGenerators do not own any created GeneratorInstance instances, nor should they try to store these for scripting. Instead, the user of the IAudioGenerator should expose the created GeneratorInstance through their own API.

 

IAudioGenerators are generally implemented on a MonoBehaviour or a ScriptableObject to bind together asset/scene management and audio generation tools with a uniform interface. You can also directly instantiate a GeneratorInstance using a ControlContext purely in code.

 



 If you want to serialize a reference to a IAudioGenerator and have an object picker for asset / component based factories, use the IAudioGenerator.Serializable utility to store/load these references. 

Additional resources: AudioSource.generator, AudioSource.generatorInstance

### Public Methods

| Method | Description |
| --- | --- |
| CreateInstance | Ask this interface to create a GeneratorInstance. |
