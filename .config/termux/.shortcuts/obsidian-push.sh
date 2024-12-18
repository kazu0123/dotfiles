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

RESULT=$(termux-dialog text -t "Enter commit message: " -i ${COMMIT_MESSAGE})

DIALOG_CODE=$(echo ${RESULT} | jq '.code')

if [ "${DIALOG_CODE}" = "-2" ]; then
  COMMIT_MESSAGE=$(echo ${RESULT} | jq '.text')
fi

cd ~/storage/documents/Obsidian/my-obsidian-vault

git add .
git commit -m "${COMMIT_MESSAGE}"
git push origin main
