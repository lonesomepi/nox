---
title: "NOX README"
author: "Alex Catalano"
date_created: "2025-07-27"
---

# NOX README

## Visual Studio Code Snippet

### Purpose

Generate structured log entries with a timestamp and editable placeholders — reducing friction when documenting work, thoughts, or systems.

### Definition

```json
"NOX Log Entry": {
  "scope": "",
  "prefix": "log",
  "body": [
    "${CURRENT_YEAR}-${CURRENT_MONTH}-${CURRENT_DATE} [mode:] - [] ${: | \\n - $2\\n}",
  ],
  "description": "NOX daily log template"
}
```

### Usage

Type `log` and press `Tab` to trigger the snippet.

---