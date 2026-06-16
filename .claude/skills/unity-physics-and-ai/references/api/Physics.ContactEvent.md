<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.ContactEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | A delegate to call. |

### Description

Subscribe to this event to read all collisions that occurred during the physics simulation step.

Each subscriber to this event gets invoked with a physics scene and a native array of ContactPairHeaders. Each ContactPairHeader contains an array of ContactPairs and each ContactPair contains an array of ContactPairPoints.

You can use this event to speed up contact processing as it's a lot faster than MonoBehaviour.OnCollisionEnter and other messages. You can also use this event to schedule jobs that use the provided native array. Jobs that are scheduled from this event must be completed before the next Physics.Simulate, PhysicsScene.Simulate, or PhysicsScene.RunSimulationStages with the SimulationStage.RunSimulation stage call. By default a good place to complete these jobs is MonoBehaviour.FixedUpdate.

Notes:

- Only Collider collisions are reported in this event and no trigger events will appear in the provided buffer.
- All the data in the provided buffer is read-only. No writes are permited.
- The event is invoked after the transform sync.
- To receive contacts from a Collider, set the Collider.providesContacts property to `true` or attach a MonoBehaviour script with an OnCollisionStay method.

```csharp
using System.Collections.Generic;
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class BounceScipt : MonoBehaviour
{
    [SerializeField]
    private float m_ImpulseMultiplier = 5f;    private struct JobResultStruct
    {
        public int thisInstanceID;
        public int otherInstanceID;
        public Vector3 averageNormal;
    }    private NativeArray<JobResultStruct> m_ResultsArray;
    private int m_Count;
    private JobHandle m_JobHandle;    private readonly Dictionary<int, Rigidbody> m_RigidbodyMapping = new Dictionary<int, Rigidbody>();    private void OnEnable()
    {
        m_ResultsArray = new NativeArray<JobResultStruct>(16, Allocator.Persistent);        Physics.ContactEvent += Physics_ContactEvent;        var allRBs = GameObject.FindObjectsOfType<Rigidbody>();
        foreach (var rb in allRBs)
            m_RigidbodyMapping.Add(rb.GetInstanceID(), rb);
    }    private void OnDisable()
    {
        m_JobHandle.Complete();
        m_ResultsArray.Dispose();        Physics.ContactEvent -= Physics_ContactEvent;        m_RigidbodyMapping.Clear();
    }    private void FixedUpdate()
    {
        m_JobHandle.Complete(); // The buffer is valid until the next Physics.Simulate() call. Be it internal or manual        // Do something with the contact data.
        // E.g. Add force based on the average contact normal for that body
        for (int i = 0; i < m_Count; i++)
        {
            var thisInstanceID = m_ResultsArray[i].thisInstanceID;
            var otherInstanceID = m_ResultsArray[i].otherInstanceID;            var rb0 = thisInstanceID != 0 ? m_RigidbodyMapping[thisInstanceID] : null;
            var rb1 = otherInstanceID != 0 ? m_RigidbodyMapping[otherInstanceID] : null;            if (rb0)
                rb0.AddForce(m_ResultsArray[i].averageNormal * m_ImpulseMultiplier, ForceMode.Impulse);
            if (rb1)
                rb1.AddForce(m_ResultsArray[i].averageNormal * -m_ImpulseMultiplier, ForceMode.Impulse);
        }
    }    private void Physics_ContactEvent(PhysicsScene scene, NativeArray<ContactPairHeader>.ReadOnly pairHeaders)
    {
        int n = pairHeaders.Length;        if (m_ResultsArray.Length < n)
        {
            m_ResultsArray.Dispose();
            m_ResultsArray = new NativeArray<JobResultStruct>(Mathf.NextPowerOfTwo(n), Allocator.Persistent);
        }        m_Count = n;        AddForceJob job = new AddForceJob()
        {
            pairHeaders = pairHeaders,
            resultsArray = m_ResultsArray
        };        m_JobHandle = job.Schedule(n, 256);
    }    private struct AddForceJob : IJobParallelFor
    {
        [ReadOnly]
        public NativeArray<ContactPairHeader>.ReadOnly pairHeaders;        public NativeArray<JobResultStruct> resultsArray;        public void Execute(int index)
        {
            Vector3 averageNormal = Vector3.zero;
            int count = 0;            for (int j = 0; j < pairHeaders[index].pairCount; j++)
            {
                ref readonly var pair = ref pairHeaders[index].GetContactPair(j);                if (pair.IsCollisionExit)
                    continue;                for (int k = 0; k < pair.ContactCount; k++)
                {
                    ref readonly var contact = ref pair.GetContactPoint(k);
                    averageNormal += contact.Normal;
                }                count += pair.ContactCount;
            }            if (count != 0)
                averageNormal /= (float)count;            JobResultStruct result = new JobResultStruct()
            {
                thisInstanceID = pairHeaders[index].bodyInstanceID,
                otherInstanceID = pairHeaders[index].otherBodyInstanceID,
                averageNormal = averageNormal
            };            resultsArray[index] = result;
        }
    }
}
```

This script reads all the contacts in the buffer and computes the average normal for each ContactPairHeader. Then applies a force based on the result.
