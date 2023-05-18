# to repro the error

There are 2 errors, one of which this repo reproes.

1. Upstream error fails even if local error is resolved (can't seem to repro) (CI passes but local fails)
2. If touching a file in python, with mypy batch:True, any modification results in errors (even if not touching any of the errors upstream)

```
bash repro.sh
```
