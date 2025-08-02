#!/bin/bash

DATE=$1
MODEL=$2
DAY=$(date -jf "%Y-%m-%d" "$DATE" +%d)
DAY=${DAY#0}
YEAR=$(date -jf "%Y-%m-%d" "$DATE" +%Y)
MONTH_NUM=$(date -jf "%Y-%m-%d" "$DATE" +%m)
MONTH_NAME=$(date -jf "%Y-%m-%d" "$DATE" +%B | tr '[:upper:]' '[:lower:]')
MONTH_DIR="${MONTH_NUM}-${MONTH_NAME}"
DIR="nox/models/homework/$YEAR/${MONTH_DIR}/${DAY}-homework"
DAYWEEK=$(date -jf "%Y-%m-%d" "$DATE" +%a | tr '[:lower:]' '[:upper:]')

# Validate input
if [ -z "$DATE" ] || [ -z "$MODEL" ]; then
  echo "Usage: ./model.sh YYYY-MM-DD modelName"
  exit 1
fi

# Extract day
DAY=$(date -jf "%Y-%m-%d" "$DATE" +%d)
DAY=${DAY#0}  # remove leading zero

MODEL_LOWER=$(echo "$MODEL" | tr '[:upper:]' '[:lower:]')
MODEL_DIR="nox/models/homework/$YEAR/${MONTH_DIR}/${DAY}-homework/models/$MODEL_LOWER"

# Create model folder and file
mkdir -p "$MODEL_DIR"
cat <<EOF > "$MODEL_DIR/$MODEL_LOWER-$DAY.md"
---
title: "$MODEL"
date: "$DATE"
route: "$MODEL_DIR/$MODEL_LOWER-$DAY.md"
file: "$MODEL_LOWER-$DAY.md"
---

EOF

echo "Model '$MODEL' added for $DATE (Day $DAY)"