---
title: "NOX README"
author: "Alex Catalano"
date_created: "2025-07-27"
date_updated: "2025-07-28"
---

# NOX README

A lightweight personal documentation system that turns daily logs into structured, searchable records. Built to track technical, emotional, and visual data with minimal friction.

## Getting Started

To generate a new NOX log directory, run the script with a date and day number:

```bash
./nox.sh 2025-07-27 27 personal
```

This creates a folder like:

```
nox/models/homework/2025/07-july/27-homework/
nox/models/homework/2025/07-july/27-homework/models/personal
```

## Visual Studio Code Snippet

VS Code Snippet

To speed up manual logging, add this custom snippet to your snippets/code-snippets.json in Visual Studio Code:

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

#### 📘 Learn More

For philosophy, system diagrams, and longform docs, visit:

🔗 [alexcatalano.com/nox](https://alexcatalano.com/nox)

⸻

© 2025 Alex Catalano