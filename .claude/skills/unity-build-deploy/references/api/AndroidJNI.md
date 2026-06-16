<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

'Raw' JNI interface to Android Java VM from Unity scripting (C#).

**Note:** Using *raw* JNI functions requires advanced knowledge of the Android Java Native Interface (JNI). *Please take note.*

### Static Methods

| Method | Description |
| --- | --- |
| AllocObject | Allocates a new Java object without invoking any of the constructors for the object. |
| AttachCurrentThread | Attaches the current thread to a Java (Dalvik) VM. |
| CallBooleanMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallBooleanMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallCharMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallCharMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallDoubleMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallDoubleMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallFloatMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallFloatMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallIntMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallIntMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallLongMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallLongMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallObjectMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallObjectMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallSByteMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallSByteMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallShortMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallShortMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallStaticBooleanMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticBooleanMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticCharMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticCharMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticDoubleMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticDoubleMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticFloatMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticFloatMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticIntMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticIntMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticLongMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticLongMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticObjectMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticObjectMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticSByteMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticSByteMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticShortMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticShortMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticStringMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticStringMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticVoidMethod | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStaticVoidMethodUnsafe | Invokes the specified methodID static method on a Java object, optionally passing in an array of arguments (args). |
| CallStringMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallStringMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallVoidMethod | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| CallVoidMethodUnsafe | Calls a Java instance method defined by methodID, optionally passing an array of arguments (args) to the method. |
| DeleteGlobalRef | Deletes the global reference pointed to by obj. |
| DeleteLocalRef | Deletes the local reference pointed to by obj. |
| DeleteWeakGlobalRef | Deletes the global weak reference pointed to by obj. |
| DetachCurrentThread | Detaches the current thread from a Java (Dalvik) VM. |
| EnsureLocalCapacity | Ensures that at least a given number of local references can be created in the current thread. |
| ExceptionClear | Clears any exception that is currently being thrown. |
| ExceptionDescribe | Prints an exception and a backtrace of the stack to the logcat |
| ExceptionOccurred | Determines if an exception is being thrown. |
| FatalError | Raises a fatal error and does not expect the VM to recover. This function does not return. |
| FindClass | This function loads a locally-defined class. |
| FromBooleanArray | Converts a Java array of boolean to a managed array of System.Boolean. |
| FromCharArray | Converts a Java array of char to a managed array of System.Char. |
| FromDoubleArray | Converts a Java array of double to a managed array of System.Double. |
| FromFloatArray | Converts a Java array of float to a managed array of System.Single. |
| FromIntArray | Converts a Java array of int to a managed array of System.Int32. |
| FromLongArray | Converts a Java array of long to a managed array of System.Int64. |
| FromObjectArray | Converts a Java array of java.lang.Object to a managed array of System.IntPtr, representing Java objects. |
| FromReflectedField | Converts a java.lang.reflect.Field to a field ID. |
| FromReflectedMethod | Converts a java.lang.reflect.Method or java.lang.reflect.Constructor object to a method ID. |
| FromSByteArray | Converts a Java array of byte to a managed array of System.SByte. |
| FromShortArray | Converts a Java array of short to a managed array of System.Int16. |
| GetArrayLength | Returns the number of elements in the array. |
| GetBooleanArrayElement | Returns the value of one element of a primitive array. |
| GetBooleanField | Returns the value of an instance (nonstatic) field of an object. |
| GetCharArrayElement | Returns the value of one element of a primitive array. |
| GetCharField | Returns the value of an instance (nonstatic) field of an object. |
| GetDirectBufferAddress | Fetches and returns the starting address of the memory region referenced by the given direct java.nio.Buffer. |
| GetDirectBufferCapacity | Fetches and returns the capacity of the memory region referenced by the given direct java.nio.Buffer. |
| GetDirectByteBuffer | Returns the NativeArray backed by the same memory region as the given direct java.nio.Buffer. |
| GetDirectSByteBuffer | Returns the NativeArray backed by the same memory region as the given direct java.nio.Buffer. |
| GetDoubleArrayElement | Returns the value of one element of a primitive array. |
| GetDoubleField | Returns the value of an instance (nonstatic) field of an object. |
| GetFieldID | Returns the field ID for an instance (nonstatic) field of a class. |
| GetFloatArrayElement | Returns the value of one element of a primitive array. |
| GetFloatField | Returns the value of an instance (nonstatic) field of an object. |
| GetIntArrayElement | Returns the value of one element of a primitive array. |
| GetIntField | Returns the value of an instance (nonstatic) field of an object. |
| GetJavaVM | Returns the pointer to JavaVM. |
| GetLongArrayElement | Returns the value of one element of a primitive array. |
| GetLongField | Returns the value of an instance (nonstatic) field of an object. |
| GetMethodID | Returns the method ID for an instance (nonstatic) method of a class or interface. |
| GetObjectArrayElement | Returns an element of an Object array. |
| GetObjectClass | Returns the class of an object. |
| GetObjectField | Returns the value of an instance (nonstatic) field of an object. |
| GetSByteArrayElement | Returns the value of one element of a primitive array. |
| GetSByteField | Returns the value of an instance (nonstatic) field of an object. |
| GetShortArrayElement | Returns the value of one element of a primitive array. |
| GetShortField | Returns the value of an instance (nonstatic) field of an object. |
| GetStaticBooleanField | Returns the value of a static field of an object. |
| GetStaticCharField | Returns the value of a static field of an object. |
| GetStaticDoubleField | Returns the value of a static field of an object. |
| GetStaticFieldID | Returns the field ID for a static field of a class. |
| GetStaticFloatField | Returns the value of a static field of an object. |
| GetStaticIntField | Returns the value of a static field of an object. |
| GetStaticLongField | Returns the value of a static field of an object. |
| GetStaticMethodID | Returns the method ID for a static method of a class. |
| GetStaticObjectField | Returns the value of a static field of an object. |
| GetStaticSByteField | Returns the value of a static field of an object. |
| GetStaticShortField | Returns the value of a static field of an object. |
| GetStaticStringField | Returns the value of a static field of an object. |
| GetStringChars | Returns a pointer to the array of Unicode characters of the string. This pointer is valid until ReleaseStringchars() is called. |
| GetStringField | Returns the value of an instance (nonstatic) field of an object. |
| GetStringLength | Returns the length (the count of Unicode characters) of a Java string. |
| GetStringUTFChars | Returns a managed string object representing the string in modified UTF-8 encoding. |
| GetStringUTFLength | Returns the length in bytes of the modified UTF-8 representation of a string. |
| GetSuperclass | If clazz represents any class other than the class Object, then this function returns the object that represents the superclass of the class specified by clazz. |
| GetVersion | Returns the version of the native method interface. |
| InvokeAttached | Calls AndroidJNI.AttachCurrentThread (if necessary) before invoking a delegate, and then calls AndroidJNI.DetachCurrentThread. |
| IsAssignableFrom | Determines whether an object of clazz1 can be safely cast to clazz2. |
| IsInstanceOf | Tests whether an object is an instance of a class. |
| IsSameObject | Tests whether two references refer to the same Java object. |
| NewBooleanArray | Constructs a new primitive array object. |
| NewCharArray | Constructs a new primitive array object. |
| NewDirectByteBuffer | Allocates and returns a direct java.nio.ByteBuffer referring to the block of memory starting at the memory address address and extending capacity bytes. |
| NewDoubleArray | Constructs a new primitive array object. |
| NewFloatArray | Constructs a new primitive array object. |
| NewGlobalRef | Creates a new global reference to the object referred to by the obj argument. |
| NewIntArray | Constructs a new primitive array object. |
| NewLocalRef | Creates a new local reference that refers to the same object as obj. |
| NewLongArray | Constructs a new primitive array object. |
| NewObject | Constructs a new Java object. The method ID indicates which constructor method to invoke. This ID must be obtained by calling GetMethodID() with <init> as the method name and void (V) as the return type. |
| NewObjectA | Constructs a new Java object. The method ID indicates which constructor method to invoke. This ID must be obtained by calling GetMethodID() with <init> as the method name and void (V) as the return type. |
| NewObjectArray | Constructs a new array holding objects in class clazz. All elements are initially set to obj. |
| NewSByteArray | Constructs a new primitive array object. |
| NewShortArray | Constructs a new primitive array object. |
| NewString | Constructs a new java.lang.String object from an array of Unicode characters. |
| NewStringUTF | Constructs a new java.lang.String object from an array of characters in modified UTF-8 encoding. |
| NewWeakGlobalRef | Creates a new global weak reference to the object referred to by the obj argument. |
| PopLocalFrame | Pops off the current local reference frame, frees all the local references, and returns a local reference in the previous local reference frame for the given result object. |
| PushLocalFrame | Creates a new local reference frame, in which at least a given number of local references can be created. |
| RegisterNatives | Registers native methods with the class specified by the clazz argument. |
| SetBooleanArrayElement | Sets the boolean value of one element in a primitive array. |
| SetBooleanField | Sets the value of an instance field of the specified object. |
| SetCharArrayElement | Sets the char value of one element in a primitive array. |
| SetCharField | Sets the value of an instance field of the specified object. |
| SetDoubleArrayElement | Sets the double value of one element in a primitive array. |
| SetDoubleField | Sets the value of an instance field of the specified object. |
| SetFloatArrayElement | Sets the float value of one element in a primitive array. |
| SetFloatField | Sets the value of an instance field of the specified object. |
| SetIntArrayElement | Sets the int value of one element in a primitive array. |
| SetIntField | Sets the value of an instance field of the specified object. |
| SetLongArrayElement | Sets the long value of one element in a primitive array. |
| SetLongField | Sets the value of an instance field of the specified object. |
| SetObjectArrayElement | Sets an element of an Object array. |
| SetObjectField | Sets the value of an instance field of the specified object. |
| SetSByteArrayElement | Sets the sbyte value of one element in a primitive array. |
| SetSByteField | Sets the value of an instance field of the specified object. |
| SetShortArrayElement | Sets the short value of one element in a primitive array. |
| SetShortField | Sets the value of an instance field of the specified object. |
| SetStaticBooleanField | Sets the value of a static field in the specified object. |
| SetStaticCharField | Sets the value of a static field in the specified object. |
| SetStaticDoubleField | Sets the value of a static field in the specified object. |
| SetStaticFloatField | Sets the value of a static field in the specified object. |
| SetStaticIntField | Sets the value of a static field in the specified object. |
| SetStaticLongField | Sets the value of a static field in the specified object. |
| SetStaticObjectField | Sets the value of a static field in the specified object. |
| SetStaticSByteField | Sets the value of a static field in the specified object. |
| SetStaticShortField | Sets the value of a static field in the specified object. |
| SetStaticStringField | Sets the value of a static field in the specified object. |
| SetStringField | Sets the value of an instance field of the specified object. |
| Throw | Causes a java.lang.Throwable object to be thrown. |
| ThrowNew | Constructs an exception object from the specified class with the message specified by message and causes that exception to be thrown. |
| ToBooleanArray | Converts a managed array of System.Boolean to a Java array of boolean. |
| ToCharArray | Converts a managed array of System.Char to a Java array of char. |
| ToDoubleArray | Converts a managed array of System.Double to a Java array of double. |
| ToFloatArray | Converts a managed array of System.Single to a Java array of float. |
| ToIntArray | Converts a managed array of System.Int32 to a Java array of int. |
| ToLongArray | Converts a managed array of System.Int64 to a Java array of long. |
| ToObjectArray | Converts a managed array of System.IntPtr, representing Java objects, to a Java array of java.lang.Object. |
| ToReflectedField | Converts a field ID derived from cls to a java.lang.reflect.Field object. |
| ToReflectedMethod | Converts a method ID derived from clazz to a java.lang.reflect.Method or java.lang.reflect.Constructor object. |
| ToSByteArray | Converts a managed array of System.SByte to a Java array of byte. |
| ToShortArray | Converts a managed array of System.Int16 to a Java array of short. |
| UnregisterNatives | Unregisters native methods of a class. The class goes back to the state before it was linked or registered with its native method functions. |
