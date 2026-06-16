<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeContainerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to create your own custom native container.

Native containers let you create new container types, which don't allocate any GC memory and give explicit control over allocations. The data contained must be blittable. You can also use native containers in jobs. The job debugger makes sure that all access to native containers is safe and throws exceptions if any code contains race conditions or non-deterministic behavior.

Native containers must embed an AtomicSafetyHandle to ensure that the job debugging system can detect any possible race conditions, and leak tracking happens automatically whenever UnsafeUtility.MallocTracked is called.

To create your own custom container use the following code example. You should add test coverage for all scenarios, particularly for the integration into jobs, to ensure that all race conditions are prevented. If you implement a custom container incorrectly, it might crash Unity without throwing an exception.

You can also use the Collections package to create a registered custom allocator to allocate your own custom container. For more information, see the Collections documentation on [Custom allocators](https://docs.unity3d.com/Packages/com.unity.collections@latest/index.html?subfolder=/manual/allocator-custom-define.html).

```csharp
using System.Diagnostics;
using System;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Collections;
using Unity.Burst;// Marks our struct as a NativeContainer.
// If ENABLE_UNITY_COLLECTIONS_CHECKS is enabled,
// it is required that m_Safety with exactly this name.
[NativeContainer]
// The [NativeContainerSupportsMinMaxWriteRestriction] enables
// a common jobification pattern where an IJobParallelFor is split into ranges
// And the job is only allowed to access the index range being Executed by that worker thread.
// Effectively limiting access of the array to the specific index passed into the Execute(int index) method
// This attribute requires m_MinIndex & m_MaxIndex to exist.
// and the container is expected to perform out of bounds checks against it.
// m_MinIndex & m_MaxIndex will be set by the job scheduler before Execute is called on the worker thread.
[NativeContainerSupportsMinMaxWriteRestriction]
// It is recommended to always implement a Debugger proxy
// to visualize the contents of the array in VisualStudio and other tools.
[DebuggerDisplay("Length = {Length}")]
[DebuggerTypeProxy(typeof(NativeCustomArrayDebugView<>))]
public unsafe struct NativeCustomArray<T> : IDisposable where T : unmanaged
{
    internal void* m_Buffer;
    internal int m_Length;#if ENABLE_UNITY_COLLECTIONS_CHECKS
    internal int m_MinIndex;
    internal int m_MaxIndex;
    internal AtomicSafetyHandle m_Safety;
    internal static readonly SharedStatic<int> s_staticSafetyId = SharedStatic<int>.GetOrCreate<NativeCustomArray<T>>();
#endif    internal Allocator m_AllocatorLabel;    public NativeCustomArray(int length, Allocator allocator)
    {
        int totalSize = UnsafeUtility.SizeOf<T>() * length;#if ENABLE_UNITY_COLLECTIONS_CHECKS
        // Native allocation is only valid for Temp, TempJob, Persistent or registered custom allocator
        if (allocator <= Allocator.None)
            throw new ArgumentException("Allocator must be Temp, TempJob, Persistent or registered custom allcoator", "allocator");
        if (length < 0)
            throw new ArgumentOutOfRangeException("length", "Length must be >= 0");
        if (!UnsafeUtility.IsBlittable<T>())
            throw new ArgumentException(string.Format("{0} used in NativeCustomArray<{0}> must be blittable", typeof(T)));
#endif        m_Buffer = AllocatorManager.Allocate(allocator, totalSize, UnsafeUtility.AlignOf<T>());
        UnsafeUtility.MemClear(m_Buffer, totalSize);        m_Length = length;
        m_AllocatorLabel = allocator;#if ENABLE_UNITY_COLLECTIONS_CHECKS
        m_MinIndex = 0;
        m_MaxIndex = length - 1;
        m_Safety = CollectionHelper.CreateSafetyHandle(allocator);
        CollectionHelper.SetStaticSafetyId<NativeCustomArray<T>>(ref m_Safety, ref s_staticSafetyId.Data);
#endif
    }    public int Length { get { return m_Length; } }    public unsafe T this[int index]
    {
        get
        {
#if ENABLE_UNITY_COLLECTIONS_CHECKS
            // If the container is currently not allowed to read from the buffer
            // then this will throw an exception.
            // This handles all cases, from already disposed containers
            // to safe multithreaded access.
            AtomicSafetyHandle.CheckReadAndThrow(m_Safety);            // Perform out of range checks based on
            // the NativeContainerSupportsMinMaxWriteRestriction policy
            if (index < m_MinIndex || index > m_MaxIndex)
                FailOutOfRangeError(index);
#endif
            // Read the element from the allocated native memory
            return UnsafeUtility.ReadArrayElement<T>(m_Buffer, index);
        }        set
        {
#if ENABLE_UNITY_COLLECTIONS_CHECKS
            // If the container is currently not allowed to write to the buffer
            // then this will throw an exception.
            // This handles all cases, from already disposed containers
            // to safe multithreaded access.
            AtomicSafetyHandle.CheckWriteAndThrow(m_Safety);            // Perform out of range checks based on
            // the NativeContainerSupportsMinMaxWriteRestriction policy
            if (index < m_MinIndex || index > m_MaxIndex)
                FailOutOfRangeError(index);
#endif
            // Writes value to the allocated native memory
            UnsafeUtility.WriteArrayElement(m_Buffer, index, value);
        }
    }    public T[] ToArray()
    {
#if ENABLE_UNITY_COLLECTIONS_CHECKS
        AtomicSafetyHandle.CheckReadAndThrow(m_Safety);
#endif        var array = new T[Length];
        for (var i = 0; i < Length; i++)
            array[i] = UnsafeUtility.ReadArrayElement<T>(m_Buffer, i);
        return array;
    }    public bool IsCreated
    {
        get { return m_Buffer != null; }
    }    public void Dispose()
    {
#if ENABLE_UNITY_COLLECTIONS_CHECKS
        CollectionHelper.DisposeSafetyHandle(ref m_Safety);
#endif        AllocatorManager.Free(m_AllocatorLabel, m_Buffer);
        m_Buffer = null;
        m_Length = 0;
    }#if ENABLE_UNITY_COLLECTIONS_CHECKS
    private void FailOutOfRangeError(int index)
    {
        if (index < Length && (m_MinIndex != 0 || m_MaxIndex != Length - 1))
            throw new IndexOutOfRangeException(string.Format(
                "Index {0} is out of restricted IJobParallelFor range [{1}...{2}] in ReadWriteBuffer.\n" +
                "ReadWriteBuffers are restricted to only read & write the element at the job index. " +
                "You can use double buffering strategies to avoid race conditions due to " +
                "reading & writing in parallel to the same elements from a job.",
                index, m_MinIndex, m_MaxIndex));        throw new IndexOutOfRangeException(string.Format("Index {0} is out of range of '{1}' Length.", index, Length));
    }#endif
}// Visualizes the custom array in the C# debugger
internal sealed class NativeCustomArrayDebugView<T> where T : unmanaged
{
    private NativeCustomArray<T> m_Array;    public NativeCustomArrayDebugView(NativeCustomArray<T> array)
    {
        m_Array = array;
    }    public T[] Items
    {
        get { return m_Array.ToArray(); }
    }
}
```
