#!/usr/bin/env python3
"""Convert WebVTT subtitle file to clean text transcript."""

import re
import sys


def vtt_to_text(filepath: str) -> str:
	with open(filepath) as f:
		content = f.read()

	# Remove WEBVTT header
	content = re.sub(r"^WEBVTT.*?\n\n", "", content, flags=re.DOTALL)

	lines = content.split("\n")
	seen: set[str] = set()
	output: list[str] = []

	for line in lines:
		line = line.strip()
		# Skip empty, timestamps, and word-timed lines
		if not line or "-->" in line or "<c>" in line:
			continue
		# Skip duplicates (VTT repeats merged captions)
		if line in seen:
			continue
		seen.add(line)
		output.append(line)

	# Write paragraphs with blank-line separation
	return "\n\n".join(output)


if __name__ == "__main__":
	if len(sys.argv) < 2:
		print("Usage: vtt-to-text.py <file.vtt>", file=sys.stderr)
		sys.exit(1)
	print(vtt_to_text(sys.argv[1]))
