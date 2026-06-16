<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A ProcessorInstance that generates audio data.

A GeneratorInstance can be defined through implementing the GeneratorInstance.IControl_1 and IRealtime interfaces, which defines the control and real-time thread behaviour respectively. 

 To use a generator in a scene, for example with an AudioSource, it must have an associated IAudioGenerator that will instantiate it. In the Unity Audio system they are used with an AudioSource by setting the AudioSource.generator property to the associated IAudioGenerator. 

 It is also possible to create your own generators through code using a ControlContext. Interacting with an instantiated generator depends on the ownership of the GeneratorInstance: If the generator has been created from an AudioSource, you would interact with it through the instance obtained from AudioSource.generatorInstance.

```csharp
using Unity.Burst;
using Unity.IntegerTime;
using UnityEngine;
using UnityEngine.Audio;
using static UnityEngine.Audio.ProcessorInstance;[BurstCompile(CompileSynchronously = true)]
public struct SineProcessor : GeneratorInstance.IRealtime
{
    private const float k_Tau = Mathf.PI * 2;
    private float m_Frequency;
    private float m_Phase;    public static GeneratorInstance Allocate(ControlContext context, float frequency)
    {
        return context.AllocateGenerator(new SineProcessor(frequency), new Control());
    }    public bool isFinite => false;
    public bool isRealtime => true;
    public DiscreteTime? length => null;    private GeneratorInstance.Setup m_Setup;    SineProcessor(float initialFrequency)
    {
        m_Frequency = initialFrequency;
        m_Phase = 0.0f;
        m_Setup = new GeneratorInstance.Setup();
    }    public void Update(UpdatedDataContext context, Pipe pipe)
    {
        foreach (var data in pipe.GetAvailableData(context))
        {
            if (data.TryGetData(out FrequencyData freq))
            {
                m_Frequency = freq.Value;
            }
        }
    }    public GeneratorInstance.Result Process(in RealtimeContext ctx, Pipe pipe, ChannelBuffer buffer, GeneratorInstance.Arguments args)
    {
        for (var frame = 0; frame < buffer.frameCount; frame++)
        {
            for (var channel = 0; channel < buffer.channelCount; channel++)
                buffer[channel, frame] = Mathf.Sin(m_Phase * k_Tau);            m_Phase += m_Frequency / m_Setup.sampleRate;            if (m_Phase > 1.0f) m_Phase -= 1.0f;
        }        return buffer.frameCount;
    }    struct Control : GeneratorInstance.IControl<SineProcessor>
    {
        public void Configure(ControlContext context, ref SineProcessor generator, in AudioFormat format, out GeneratorInstance.Setup setup, ref GeneratorInstance.Properties p)
        {
            generator.m_Setup = new GeneratorInstance.Setup(speakerMode: AudioSpeakerMode.Mono, sampleRate: format.sampleRate);
            setup = generator.m_Setup;
        }        public void Dispose(ControlContext context, ref SineProcessor processor) { }        public void Update(ControlContext context, Pipe pipe) { }        public ProcessorInstance.Response OnMessage(ControlContext context, Pipe pipe, Message message)
        {
            return ProcessorInstance.Response.Unhandled;
        }
    }    public struct FrequencyData
    {
        public readonly float Value;
        public FrequencyData(float value)
        {
            Value = value;
        }
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Checks if this instance equals another. |
| GetHashCode | Retrieves a hash code based on this instance. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Checks if two instances are not equal. |
| operator == | Checks if two instances are equal. |
| ProcessorInstance | Convert this GeneratorInstance to its more general ProcessorInstance representation. |
