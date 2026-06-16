<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.ObjectPool_1-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| createFunc | Method called to create a new instance when the pool is empty. In most cases, this is a simple method that just returns a newly constructed instance of the pooled type. |
| actionOnGet | Method called when the instance is taken from the pool. Use this to set up and activate the instance. |
| actionOnRelease | Method called when the instance is returned to the pool. Use this to clean up and deactivate the instance. |
| actionOnDestroy | Method called when an instance can't be returned to the pool because the pool has reached its maximum size. |
| collectionCheck | If true, collection checks are performed when an instance is returned to the pool and an exception is thrown if the instance is already in the pool. Collection checks are only performed in the Editor and not in Player builds. If false, no collection checks are performed. |
| defaultCapacity | The default capacity of the pool at creation as a number of object instances. This is the starting capacity of the stack-like structure the pool uses for internal storage. Note that this does not mean this number of instances are created at construction: they're created individually on each call to `Get`, which invokes `createFunc`. When the pool reaches `defaultCapacity`, it expands to accommodate any additional instances returned to it, but only up to the limit defined by `maxSize`. |
| maxSize | The maximum number of object instances that the pool can hold. The pool can expand from its starting `defaultCapacity` up to `maxSize` and no further. When the pool reaches the `maxSize` then any further instances returned to the pool are ignored and can be garbage collected. Use this to prevent the pool growing beyond a pre-defined limit. |

### Description

Creates a new ObjectPool instance.

```csharp
using System.Text;
using UnityEngine;
using UnityEngine.Pool;// This component returns the particle system to the pool when the OnParticleSystemStopped event is received.
[RequireComponent(typeof(ParticleSystem))]
public class ReturnToPool : MonoBehaviour
{
    public ParticleSystem system;
    public IObjectPool<ParticleSystem> pool;    void Start()
    {
        system = GetComponent<ParticleSystem>();
        ParticleSystem.MainModule main = system.main;
        main.stopAction = ParticleSystemStopAction.Callback;
    }    void OnParticleSystemStopped()
    {
        // Return to the pool
        pool.Release(system);
    }
}// This example spans a random number of ParticleSystems using a pool so that old systems can be reused.
public class PoolExample : MonoBehaviour
{
    public enum PoolType
    {
        Stack,
        LinkedList
    }    public PoolType poolType;    // Collection checks will throw errors if we try to release an item that is already in the pool.
    public bool collectionChecks = true;
    public int maxPoolSize = 10;    IObjectPool<ParticleSystem> m_Pool;    public IObjectPool<ParticleSystem> Pool
    {
        get
        {
            if (m_Pool == null)
            {
                if (poolType == PoolType.Stack)
                    m_Pool = new ObjectPool<ParticleSystem>(CreatePooledItem, OnTakeFromPool, OnReturnedToPool, OnDestroyPoolObject, collectionChecks, 10, maxPoolSize);
                else
                    m_Pool = new LinkedPool<ParticleSystem>(CreatePooledItem, OnTakeFromPool, OnReturnedToPool, OnDestroyPoolObject, collectionChecks, maxPoolSize);
            }
            return m_Pool;
        }
    }    ParticleSystem CreatePooledItem()
    {
        GameObject gameObject = new GameObject("Pooled Particle System");
        ParticleSystem particleSystem = gameObject.AddComponent<ParticleSystem>();
        particleSystem.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);        ParticleSystem.MainModule main = particleSystem.main;
        main.duration = 1;
        main.startLifetime = 1;
        main.loop = false;        // This is used to return ParticleSystems to the pool when they have stopped.
        ReturnToPool returnToPool = gameObject.AddComponent<ReturnToPool>();
        returnToPool.pool = Pool;        return particleSystem;
    }    // Called when an item is returned to the pool using Release
    void OnReturnedToPool(ParticleSystem system)
    {
        system.gameObject.SetActive(false);
    }    // Called when an item is taken from the pool using Get
    void OnTakeFromPool(ParticleSystem system)
    {
        system.gameObject.SetActive(true);
    }    // If the pool capacity is reached then any items returned will be destroyed.
    // We can control what the destroy behavior does, here we destroy the GameObject.
    void OnDestroyPoolObject(ParticleSystem system)
    {
        Destroy(system.gameObject);
    }    void OnGUI()
    {
        GUILayout.Label("Pool size: " + Pool.CountInactive);
        if (GUILayout.Button("Create Particles"))
        {
            int amount = Random.Range(1, 10);
            for (int i = 0; i < amount; ++i)
            {
                ParticleSystem particleSystem = Pool.Get();
                particleSystem.transform.position = Random.insideUnitSphere * 10;
                particleSystem.Play();
            }
        }
    }
}
```
