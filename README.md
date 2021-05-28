# code-metrics

## Development

### Python

- `pipenv install --python 3.8`.
- `pipenv shell`.

## Notes

- [Radon](https://github.com/rubik/radon):
  - [Raw metrics](https://github.com/rubik/radon/blob/master/radon/raw.py):
    - **loc**: The number of lines of code (total).
    - **lloc**: The number of logical lines of code.
    - **sloc**: The number of source lines of code (not necessarily corresponding to LLOC).
    - **comments**: The number of Python comment lines.
    - **multi**: The number of lines which represent multi-line strings.
    - **single_comments**: The number of lines which are just comments with no code.
    - **blank**: The number of blank lines (or space-only ones).
  - Commands:
    - `radon raw src/ -j -O raw_metrics.json`.
    - `radon raw src/ -j | python -m json.tool > raw_metrics.json` ([source](https://stackoverflow.com/a/1920585)).
    - `radon raw src/ -s`.
- [json.tool](https://docs.python.org/3/library/json.html#module-json.tool).
