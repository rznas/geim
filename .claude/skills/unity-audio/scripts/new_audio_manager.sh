#!/usr/bin/env bash
# new_audio_manager.sh — write a correctly-formed Unity 6 AudioManager MonoBehaviour.
#
# Scaffolds a singleton-style AudioManager that:
#   - plays one-shot SFX with randomized pitch (variety) via AudioSource.PlayOneShot,
#   - picks a random clip from a set when given several,
#   - sets an AudioMixer group volume from a 0..1 slider using the dB conversion
#     Mathf.Log10(linear) * 20  (with linear<=0 mapped to -80 dB, NOT log10(0)=-inf).
#
# It writes the .cs FILE ONLY. Wiring up the AudioMixer asset, exposing the
# parameter, and routing AudioSources to groups is editor work (see
# references/mixer_and_volume.md). The volume call targets an EXPOSED mixer
# parameter name — it will silently no-op if that name isn't exposed.
#
# Unity 6 (6000.x). Snippet is doc-sourced from references/api/, not compile-tested
# (no Editor installed in this environment).
#
# Usage:
#   new_audio_manager.sh <projdir> [ClassName] [subdir]
#     ClassName: default AudioManager (must be PascalCase; file name == class name)
#     subdir:    under Assets/Scripts/ (default: Audio)
#
# Example:
#   new_audio_manager.sh /path/to/proj
#   -> /path/to/proj/Assets/Scripts/Audio/AudioManager.cs

set -euo pipefail
DIR="${1:?usage: new_audio_manager.sh <projdir> [ClassName] [subdir]}"
CLASS="${2:-AudioManager}"
SUBDIR="${3:-Audio}"

if ! [[ "$CLASS" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "ClassName must be PascalCase (got: $CLASS)" >&2; exit 2
fi

DEST="$DIR/Assets/Scripts/${SUBDIR}"
mkdir -p "$DEST"
FILE="$DEST/$CLASS.cs"
if [[ -e "$FILE" ]]; then echo "refusing to overwrite $FILE" >&2; exit 1; fi

cat > "$FILE" <<EOF
using UnityEngine;
using UnityEngine.Audio;

// A simple game-wide audio manager.
//   - PlaySfx(...) plays one-shots through one AudioSource with pitch variety.
//   - SetGroupVolume(...) drives an exposed AudioMixer parameter from a 0..1 slider.
//
// Setup (editor):
//   1. Put this on a persistent GameObject (e.g. a "_Audio" object).
//   2. Add an AudioSource component (or let RequireComponent add one) — that is
//      the channel one-shots play through. Set its Output to your SFX mixer group.
//   3. Assign the AudioMixer asset to 'mixer' and expose a float parameter on each
//      group you want to control (right-click the volume in the mixer Inspector ->
//      "Expose ... to script"), then pass that exact name to SetGroupVolume.
//
// IMPORTANT: AudioMixer volume is in DECIBELS, not 0..1. SetGroupVolume converts.
[RequireComponent(typeof(AudioSource))]
public class $CLASS : MonoBehaviour
{
    public static $CLASS Instance { get; private set; }

    [Header("Routing")]
    [Tooltip("The AudioMixer asset that owns the exposed volume parameters.")]
    [SerializeField] private AudioMixer mixer;

    [Header("SFX pitch variety")]
    [Range(0f, 0.5f)]
    [SerializeField] private float pitchJitter = 0.1f;   // +/- around 1.0

    private AudioSource sfxSource;

    private void Awake()
    {
        // Cheap singleton. Keep one AudioManager across scenes.
        if (Instance != null && Instance != this) { Destroy(gameObject); return; }
        Instance = this;
        DontDestroyOnLoad(gameObject);

        sfxSource = GetComponent<AudioSource>();
        sfxSource.playOnAwake = false;
    }

    // Play a one-shot SFX with a small random pitch shift so repeats don't sound
    // identical. PlayOneShot layers over anything already playing (does not cut it).
    // volumeScale scales the AudioSource volume for this shot (0..1; >1 may clip).
    public void PlaySfx(AudioClip clip, float volumeScale = 1f)
    {
        if (clip == null) return;
        // pitch is clamped to [-3..3] by Unity for AudioClips.
        sfxSource.pitch = 1f + Random.Range(-pitchJitter, pitchJitter);
        sfxSource.PlayOneShot(clip, volumeScale);
    }

    // Pick one of several clips at random, then play it with pitch variety.
    public void PlaySfx(AudioClip[] clips, float volumeScale = 1f)
    {
        if (clips == null || clips.Length == 0) return;
        PlaySfx(clips[Random.Range(0, clips.Length)], volumeScale);
    }

    // Fire a one-shot at a world position (auto-creates + disposes a temp source).
    // Make sure that source ends up 3D (its spatialBlend) for true positional audio.
    public void PlaySfxAt(AudioClip clip, Vector3 position, float volume = 1f)
    {
        if (clip == null) return;
        AudioSource.PlayClipAtPoint(clip, position, volume);
    }

    // Drive an EXPOSED AudioMixer parameter from a 0..1 slider value.
    // dB = log10(linear) * 20. log10(0) is -infinity, so clamp 0 -> -80 dB (silence).
    // Returns false if the exposed parameter name was not found on the mixer.
    public bool SetGroupVolume(string exposedParam, float linear01)
    {
        if (mixer == null) return false;
        float dB = linear01 <= 0.0001f ? -80f : Mathf.Log10(linear01) * 20f;
        return mixer.SetFloat(exposedParam, dB);   // false if param not exposed
    }
}
EOF

REL="Assets/Scripts/${SUBDIR}/$CLASS.cs"
echo "Wrote $FILE"
echo "  asset path: $REL"
echo "  Next (editor): add an AudioMixer, expose float params (e.g. MusicVol, SfxVol),"
echo "  assign the mixer to this component, and route AudioSources to mixer groups."
echo "  Wire a UI Slider's onValueChanged -> SetGroupVolume(\"SfxVol\", value)."
