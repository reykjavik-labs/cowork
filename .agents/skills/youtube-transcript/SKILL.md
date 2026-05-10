---
name: youtube-transcript
description: Download and extract transcripts from YouTube videos. Saves a clean text transcript file named YYYYMMDD-transcript-{video-slug}.txt. USE WHEN user provides a YouTube URL and wants a transcript, wants to save video text, or mentions "transcript", "subtitles", "captions" with a YouTube link.
---

# YouTube Transcript

## Quick start

1. Install `yt-dlp` if not present: `pip install yt-dlp` (or `brew install yt-dlp`)
2. Identify the target directory from context — write to the `tasks/` folder of the current project, or wherever the user specifies
3. Run the download and conversion script

## Workflow

### Step 1: Create task folder

If the transcript goes into a project's `tasks/` directory, create the folder first:

```bash
mkdir -p "projects/{project}/tasks/{task}/{YYYYMMDD}-transcript-{slug}"
```

### Step 2: Download auto-generated subtitles

```bash
yt-dlp \
  --write-auto-subs \
  --sub-lang en \
  --convert-subs vtt \
  --skip-download \
  --output "{target_dir}/raw" \
  "{youtube_url}"
```

If English auto-subs are unavailable, try `--sub-lang es` or omit `--sub-lang` to get whatever is available.

### Step 3: Convert VTT to clean text

Use the bundled script to strip timestamps, `<c>` tags, and duplicates:

```bash
python3 scripts/vtt-to-text.py "{target_dir}/raw.en.vtt" > "{target_dir}/transcript.txt"
```

The script is at `scripts/vtt-to-text.py` relative to this skill's directory.

### Step 4: Optional — move to target filename

If the user wants the file named differently, rename `transcript.txt` to `YYYYMMDD-transcript-{video-slug}.txt`.

## Naming convention

- Date: `YYYYMMDD` from the current date
- Slug: dashed-lowercase version of the video title (first ~5 meaningful words)
- Example: `20260510-transcript-zettelkasten-note-taking-method.txt`

## Cleanup

Remove the raw `.vtt` file after successful conversion to keep the folder tidy.
