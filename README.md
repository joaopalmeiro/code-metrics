# code-metrics

> Tables for code metrics.

## Development

### Python

- `pipenv install --python 3.8`.
- `pipenv shell`.

### R

- Install [RStudio](https://www.rstudio.com/), [{remotes}](https://github.com/r-lib/remotes), and [{renv}](https://github.com/rstudio/renv).
- `renv::restore()` (run on RStudio only the first time).
- `open r/r.Rproj` (terminal).

## Notes

- [Radon](https://github.com/rubik/radon):
  - [Raw metrics](https://github.com/rubik/radon/blob/master/radon/raw.py):
    - **LOC**: The number of lines of code (total).
    - **LLOC**: The number of logical lines of code.
    - **SLOC**: The number of source lines of code (not necessarily corresponding to LLOC).
    - **Comments**: The number of Python comment lines.
    - **Multi**: The number of lines which represent multi-line strings.
    - **Single comments**: The number of lines which are just comments with no code.
    - **Blank**: The number of blank lines (or space-only ones).
  - Commands:
    - `radon raw src/ -j -O raw_metrics.json`.
    - `radon raw src/ -j | python -m json.tool > raw_metrics.json` ([source](https://stackoverflow.com/a/1920585)).
    - `radon raw src/ -s`.
- [json.tool](https://docs.python.org/3/library/json.html#module-json.tool).
