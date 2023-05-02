if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/bu123bai/SNS_MOVIES_PRO.git /SNS_MOVIES_PRO
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SNS_MOVIES_PRO
fi
cd /SNS_MOVIES_PRO
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
