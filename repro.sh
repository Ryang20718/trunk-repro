#!/bin/bash
python3 m venv .venv && source .venv/bin/activate && pip3 install -r requirements.txt
git fetch origin main && git reset --hard origin/main && git checkout -b testing_error
echo 'g = 3' >> test/a.py
cp test/b.py test/e.py && cp test/b.py test/f.py
trunk check --filter=mypy