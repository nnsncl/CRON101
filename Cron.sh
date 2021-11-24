echo 'Creating virtual environement...'
python3 -m venv venv
echo 'Virtual environement created'
source venv/bin/activate
echo 'Switched to Virtual environement'

echo 'Downloading dependencies...'
pip3 install --upgrade requests
echo 'Dependencies installed'

echo 'Gathering data...'
python3 job.py > data.json

echo "0 0 1 * * python job.py" | crontab