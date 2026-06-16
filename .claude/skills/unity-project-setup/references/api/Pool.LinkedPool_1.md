<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.LinkedPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A linked list version of IObjectPool<T0>.

Object Pooling is a way to optimize your projects and lower the burden that is placed on the CPU when having to rapidly create and destroy new objects. It is a good practice and design pattern to keep in mind to help relieve the processing power of the CPU to handle more important tasks and not become inundated by repetitive create and destroy calls. The LinkedPool uses a linked list to hold a collection of object instances for reuse. Note this is not thread-safe.

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

### Properties

| Property | Description |
| --- | --- |
| CountInactive | Number of objects that are currently available in the pool. |

### Constructors

| Constructor | Description |
| --- | --- |
| LinkedPool_1 | Creates a new LinkedPool instance. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Removes all pooled items. If the pool contains a destroy callback then it will be called for each item that is in the pool. |
| Dispose | Removes all pooled items. If the pool contains a destroy callback then it will be called for each item that is in the pool. |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
