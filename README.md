# Loaded Lecture Template

Template for assignments with Poetry, and VS Code extensions for Python.

## Installation and Usage

### Installation and Use via Github Codespaces (Recommended)

To use this repository via codespaces simply click on the `code` &rarr; `codespaces` &rarr; `create codespace on main` buttons.

Once the codespace is open in the browser, click the three bars in the top left corner and select `Open in VS Code Desktop`.

Widgets might work better when using VS Code Desktop vs. in the browser.

If the codespace takes a long time to build, use `Cmd` / `Ctrl` + `Shift` + `P` &rarr; `Codespaces: View Creation Logs` to check status.

If required, use `Cmd` / `Ctrl` + `Shift` + `P` &rarr; `Codespaces: Rebuild Container` to rebuild the container. Do not use `gh codespace rebuild`. This takes a long time since it re-downloads the entire image.


### Dependencies for Local Installation

#### Poetry

This project is built on Python 3.12. Poetry is required for installation. To install Poetry, view the instructions [here](https://python-poetry.org/docs/).

In codespaces, Poetry installation is handled in the development container. The user does not need to install Poetry if working in codespaces.

### Local Installation

To install locally, first install the required dependencies (Poetry and TexLive), then clone the repository and navigate to its directory.

```bash
git clone https://github.com/ruc-practical-ai/example-reveal-js-presentation.git
cd example-reveal-js-presentation
```

#### Installing Python Dependencies Locally

To install locally, first install the required dependencies (Poetry and TexLive), then clone the repository and navigate to its directory.

```bash
git clone https://github.com/ruc-practical-ai/assignment-template
cd assignment-template
```

Configure Poetry to install its virtual environment inside the repository directory.

```bash
poetry config virtualenvs.in-project true
```

Install the repository's Python dependencies.

```bash
poetry install --no-root
```

Check where Poetry built the virtual environment with the following command.

```bash
poetry env info --path
```

Open the command pallette with `Ctrl` + `Shift` + `P` and type `Python: Select Interpreter`.

Now specify that VSCode should use the that interpreter (the one in `./.venv/Scripts/python.exe`). Once you specify this, Jupyter notebooks should show the project's interpreter as an option when you click the `kernel` icon or the small icon showing the current version of python (e.g., `Python 3.12.1`) and then click `Select Another Kernel`, and finally click `Python Environments...`.

## License

This repository is provided with an MIT license. See the `LICENSE` file.

## Contributing

Please email Mauro Sanchirico at ms3978@camden.rutgers.edu (academic) or sanchirico.mauro@gmail.com (personal) with questions, comments, bug reports, or suggestions for improvement.

