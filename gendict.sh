#!/usr/bin/env bash
cat /usr/share/dict/words | grep '^......$' | tr '[:upper:]' '[:lower:]' | while read line
do
  export FACT="word($(echo $line | grep -o . | while read CH; do echo -n "${CH},"; done)"
  FACT=$(echo -n ${FACT} | sed 's/,$//')
  FACT="${FACT})."
  echo $FACT
done > dict.pl

