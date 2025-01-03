YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)

HOUR=$(date +%H)
MINUTE=$(date +%M)
SECOND=$(date +%S)

# YYYY-MM-DD HH:mm:ss
DATETIME="$(echo $YEAR-$MONTH-$DAY $HOUR:$MINUTE:$SECOND)"

# vault backup: {{hostname}}: {{date}}
COMMIT_MESSAGE="vault backup from Pixel 8 at ${DATETIME}"

RESULT=$(termux-dialog text -t "Enter commit message: " -i "${COMMIT_MESSAGE}")

DIALOG_CODE=$(echo ${RESULT} | jq -r '.code')
RESULT_MESSAGE=$(echo ${RESULT} | jq -r '.text')

if [ "${DIALOG_CODE}" = "-2" ]; then
  exit 1
fi

if [ -n "${RESULT_MESSAGE}" ]; then
  COMMIT_MESSAGE=${RESULT_MESSAGE}
fi

cd /storage/emulated/0/Documents/Obsidian/my-obsidian-vault

git add .
git commit -m "${COMMIT_MESSAGE}"
git push origin main
