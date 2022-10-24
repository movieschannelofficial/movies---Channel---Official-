if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/King072326/file-filter-botv3.git /file-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-filter-bot
fi
cd /file-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
