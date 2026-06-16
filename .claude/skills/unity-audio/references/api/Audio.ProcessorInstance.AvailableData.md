<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.AvailableData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A temporary collection of data available for enumeration.

You can enumerate the Elements within using a **foreach** loop over this collection. 

Additional resources: Pipe.SendData

```csharp
using System;
using UnityEngine.Audio;
using static UnityEngine.Audio.ProcessorInstance;
using static UnityEngine.Audio.GeneratorInstance;
using Unity.IntegerTime;class AvailableDataExamples
{
    struct ThingToCommunicate
    {
        public float MyData;
    }    struct OtherThing
    {
        public int MyOtherData;
    }    internal struct ProcessorInvestigatingData : GeneratorInstance.IRealtime
    {
        public void Update(UpdatedDataContext context, Pipe pipe)
        {
            float myData = 0f;            foreach (var element in pipe.GetAvailableData(context))
            {
                if (element.TryGetData(out ThingToCommunicate thing))
                {
                    myData = thing.MyData;
                }
                else if (element.TryGetData(out OtherThing otherThing))
                {
                    myData = MathF.PI * otherThing.MyOtherData;
                }
            }
        }        internal struct Control : GeneratorInstance.IControl<ProcessorInvestigatingData>
        {
            public void Update(ControlContext context, Pipe pipe)
            {
                float myData = 0f;                foreach (var element in pipe.GetAvailableData(context))
                {
                    if (element.TryGetData(out ThingToCommunicate thing))
                    {
                        myData = thing.MyData;
                    }
                    else if (element.TryGetData(out OtherThing otherThing))
                    {
                        myData = MathF.PI * otherThing.MyOtherData;
                    }
                }
            }            public void Dispose(ControlContext context, ref ProcessorInvestigatingData processor) { }            public ProcessorInstance.Response OnMessage(ControlContext context, Pipe pipe, Message message)
                => ProcessorInstance.Response.Unhandled;            public void Configure(ControlContext context, ref ProcessorInvestigatingData processor, in AudioFormat format, out Setup setup, ref Properties properties)
                => setup = new(format);
        }        public bool isFinite => false;
        public bool isRealtime => false;
        public DiscreteTime? length => null;
        public Result Process(in RealtimeContext ctx, Pipe pipe, ChannelBuffer buf, Arguments args) => 0;
    }
}
```
