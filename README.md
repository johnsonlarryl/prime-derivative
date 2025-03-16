<!-- ABOUT THE PROJECT -->
## About The Project


| Type               | Sub Type     | Algorithm                                          |
|--------------------|--------------|----------------------------------------------------|
| Deep Learning | RNN   | [TBD](prime_derivative/) |

### Built With

This section lists all major frameworks/libraries used to bootstrap this project.

* [![Python][Python.org]][Python-url]
* [![Jupyter][Jupyter.org]][Jupyter-url]
* [![Miniconda][Miniconda.com]][Miniconda-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Following the instructions below should get you up and running and quickly as possible without googling around to run the code.
### Prerequisites

Below is the list things you need to use the software and how to install them.  Note, these instructions assume you are using a Mac OS.  If you are using Windows you will need to go through these instructions yourself and update this READ for future users.

1. pyenv
   ```sh
    brew update
    brew install pyenv
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
   ```
2. python
   ```sh
    pyenv install 3.9.5   
    pyenv global 3.9.5 
   ```
   
3. poetry
   ```sh
   curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
   ```
   
4. miniconda
   ```sh
   cd /tmp
   curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
   bash Mambaforge-$(uname)-$(uname -m).sh
   ```

4. Restart new terminal session in order to initiate mini conda environmental setup

### Installation

Below is the list of steps for installing and setting up the app. These instructions do not rely on any external dependencies or services outside of the prerequisites above.

1. Clone the repo
   ```sh
   git clone git@github.com:johnsonlarryl/prime-derivative.git
   ```
2. Install project
   ```sh
   poetry install
   conda env create -f environment.yaml
   conda activate predict_federal_reserve_interest_rates
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Datasets
1. U.S. Bureau of Labor Statistics - CPI Index Data
   - Step 1: Download the Data from BLS
   You need to download the appropriate files from download.bls.gov/pub/time.series/ap/. The relevant file containing price index data appears to be:
      - ✅ ap.data.0.Current (for general current price index data)
      - ✅ ap.data.3.Food (for food-related price index data)
      - ✅ ap.series (for mapping series IDs to their descriptions)
      - 📥 Download the files from the BLS website:
      - URL: https://download.bls.gov/pub/time.series/ap/
        - Right-click on each relevant file and select "Save As" to download them.


2. U.S. Federal Reserve - H.15 Interest Rates (Bank Prime Rate, Federal Funds Rate, etc...)
   - Step 1: Visit the Federal Reserve Data Download Page
   Open your web browser.
   Go to the Federal Reserve Board's Data Download Program (DDP):
   🔗 https://www.federalreserve.gov/datadownload/
   - Step 2: Select "H.15 Selected Interest Rates"
   Scroll down or use the search box (top right) and type:
   "H.15 Selected Interest Rates"
   Click on "H.15 Selected Interest Rates", which contains:
   Federal Funds (Effective)
   Commercial Paper Rates
   Treasury Yields
   Other Short-Term and Long-Term Interest Rates
   - Step 3: Select the Effective Federal Funds Rate (EFFR)
   On the H.15 Selected Interest Rates page, look for the section "Federal Funds (Effective)".
   Select the series labeled "Federal Funds (Effective)", which typically has the identifier:
   Daily: DFF
   Monthly Average: RIFSPFF_N.M (Recommended for long-term analysis)
   Click the checkbox to add the series to your package.
   - Step 4: Customize the Data Download
   Choose the time range (e.g., 1919 to 2025).
   Select "CSV" as the file format for easy data processing.
   Include labels if needed.
   Click "Download Package" or "Submit" to generate the file.
   - Step 5: Review and Download the File
   This brings you to the Download Your Package page (as seen in your screenshot).
   Review package details (including file format and time period).
   Click "Download File" to save the CSV to your computer.

<!-- USAGE EXAMPLES -->
## Usage

In order to view or execute the various notebooks run the following command on any of the sub folders in this directory.

Here is an example to launch the Bank Prime Interest Prediction Model Notebook.

```sh
jupyter notebook
```

Once inside the notebook [use the following link](https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Running%20Code.html) on examples of how to use the notebook.


   
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DESIGN -->
## Design


<!-- CONTACT -->
## Contact

Larry Johnson - johnson.larry.l@fintorian.com

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [U.S. Federal Reserve](https://www.federalreserve.gov/datadownload/)
* [U.S. Treasury](https://home.treasury.gov/interest-rates-data-csv-archive)
* [U.S. Bureau of Labor Statistics](https://download.bls.gov/pub/time.series/ap/)
* [Wall Street Journal](https://www.wsj.com/market-data/quotes/index/SPX/historical-prices)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[Jupyter-url]:https://jupyter.org
[Jupyter.org]:https://img.shields.io/badge/Jupyter-F37626.svg?&style=for-the-badge&logo=Jupyter&logoColor=white
[Python-url]:https://python.org
[Python.org]:https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white
[Miniconda-url]:https://docs.conda.io/
[Miniconda.com]:https://img.shields.io/badge/conda-342B029.svg?&style=for-the-badge&logo=anaconda&logoColor=white
