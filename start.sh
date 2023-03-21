if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lalluss/Botechy.git /Botechy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Botechy
fi
cd /Botechy
pip3 install -U -r requirements.txt
echo "Starting DQ-Botechy...."
python3 bot.py
