# to repro the error

1. `python3 -m venv .venv && source .venv/bin/activate`
2. `git fetch origin main && git reset --hard origin/main && git checkout -b testing_error`
3. modify test/a.py by adding a new print line at line 2
4. copy test/b.py to test/e.py and test/f.py
5. run trunk check

```
python3 m venv .venv && source .venv/bin/activate && pip3 install -r requirements.txt
git fetch origin main && git reset --hard origin/main && git checkout -b testing_error
echo 'g = 3' >> test/a.py"
cp test/b.py test/e.py && cp test/b.py >> test/f.py
trunk check --filter=mypy
```