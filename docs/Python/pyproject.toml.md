```toml
[build-system]
requires = ["setuptools", "wheel"] # PEP 508 specifications
```

* https://peps.python.org/pep-0508/

```toml
[project]
name = "project_0"
version = "1.0.0"
authors = [
    {name = "Author", email = "author@email.com"},
]
description = "Real-World Python Projects -- Project 0."
readme = "README.md"
requires-python = ">=3.11"
dependencies = [
    # Packages this project requires
]
[project.optional-dependencies]
dev = [
    # Development tools to work on this project
    "sphinx==7.2.2",
    "sphinxcontrib-plantuml==0.25",
    "pip-tools==7.3.0"
]
test = [
    # Testing tools to test this project
    "pytest==7.4.0",
    "tox==4.9.0",
    "behave==1.2.6"
]
```

透過 pip-compile 產生 requirements-dev.txt:

```bash
pip-compile --all-extras -o requirements-dev.txt
```

透過 pip-compile 產生給 tox 用的 requirements.txt（只需包含測試用途的套件）:

```bash
pip-compile --extra test -o requirements.txt
```
