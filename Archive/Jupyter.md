# Jupyter

- [Project Jupyter](https://jUpyter.org) / [Documentation](https://docs.jupyter.org/en/latest/)
- [IPython documentation](https://ipython.readthedocs.io)
- [nbconvert documentation](https://nbconvert.readthedocs.io/en/latest/)
- [Jupyter extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)

> [!note] Minimal installation for Visual Studio Code
> Only **IPython** is required to run Jupyter notebooks in Visual Studio Code.

## Install

Install **IPython** and **`nbconvert`** with [[Python|Pip]].

```zsh
pip install ipython
pip install nbconvert
```

Install **`nbconvert`** (Requires [[Pandoc]]).

```zsh
pip install nbconvert
```

Install and register an **IPython** kernel with **Jupyter**.

```zsh
python -m pip install ipykernel
python -m ipykernel install --user
```

## Visual Studio Code

Install the **Jupyter** extension for [[Visual Studio Code]].

Create a new Notebook with *Create: New Jupyter Notebook*. Select a Python environment with *Notebook: Select Notebook Kernel* or the *Select Kernel* option at the top of the notebook.