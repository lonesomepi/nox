#!/bin/bash

DATE=$1
DAY=$2
DIR="nox/models/homework/2025/07-july/${DAY}-homework"
DAYWEEK=$(date -jf "%Y-%m-%d" "$DATE" +%a | tr '[:lower:]' '[:upper:]')

mkdir -p "$DIR"
mkdir -p "$DIR/models"

shift 2
for MODEL in "$@"; do 
  MODEL_LOWER=$(echo "$MODEL" | tr '[:upper:]' '[:lower:]')
  MODEL_DIR="$DIR/models/$MODEL_LOWER"
  mkdir -p "$MODEL_DIR"

  cat <<EOF > "$MODEL_DIR/$MODEL_LOWER-$DAY.md"
---
title: "$MODEL"
date: "$DATE"
route: "$DIR/models/$MODEL_LOWER/$MODEL_LOWER-$DAY.md"
file: "$MODEL_LOWER-$DAY.md"
---

EOF
done

cat <<LOG > "$DIR/log-$DAY.md"
---
title: "NOX Log"
date: "$DATE"
route: "nox/models/homework/2025/07-july/$DAY-homework/"
file: "log-$DAY.md"
---

## Task List

- [ ] 

## Change Log


LOG

cat <<SIG > "$DIR/signals-$DAY.md"
---
title: "NOX Signals"
date: "$DATE"
route: "nox/models/homework/2025/07-july/$DAY-homework/"
file: "signals-$DAY.md"
---

## 1.7 Routine

| ID | Time    | Domain  | [] | Time  | Notes       |
|----|---------|---------|----|-------|-------------|
| 1  | @  5:00 | Awake   | [] | :     | |
| 2  | @  6:43 | Commute | [] | :     | |
| 3  | by 7:45 | Orient  | [] | :     | |

## Scoring Shell

$DATE [mode:account] - Review of yesterday's tasks [SYS] \${checklist: |  

   - [x] 

}

## Let's Agree on This

$DATE [mode:restore] - Morning Agreement Block [$DAYWEEK] \${feed: |  

  _EiTi Shell_  
  - 
  - 

  _Let's Agree on This_  
  - [ ] 
  - [ ] 

}

---
**End of File**
SIG

echo "NOX logs created for $DATE (Day $DAY)"