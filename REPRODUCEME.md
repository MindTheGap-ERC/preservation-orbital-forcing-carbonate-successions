# Instructions for reproduction of results

Instructions to reproduce the results of the poster "Preservation of Orbital Forcing in Incomplete Carbonate Successions", presented  at the 17th Bathurst Meeting (International Meeting of Carbonate Sedimentologists) in
Naples, Italy, 5-7 September 2023.

Data generated in steps 1., 2., and 3. is already contained in the repository.

## 1. Generate sea level curves

Open the R project, and run the code in "src/R/analysis.R". This will generate .txt files  with sea level curves in "data/r-outputs/"

## 2. Generate CarboCATLite outputs

Clone [CarboCATLite](https://github.com/MindTheGap-ERC/CarboCATLite), change to the _run_from_cli_ branch, and place the sea level curves generated in 1. in the folder "params/Dbplatform/".  
Then, run

```{matlab}
CarboCAT_cli("params\DbPlatform\paramsInputValues.txt", "params\DbPlatform\paramsProcesses.txt", "bathurst_20m_amp", "params\DbPlatform\ins_sl_20m_amp.txt", true)  
```

and

```{matlab}
CarboCAT_cli("params\DbPlatform\paramsInputValues.txt", "params\DbPlatform\paramsProcesses.txt", "bathurst_20m_amp", "params\DbPlatform\ins_sl_20m_amp.txt", true)  
```

This will generate

* the files _bathurst_20m_amp.mat_ and _bathurst_2m_amp.mat_, which can be found under "data/matlab_outputs/"
* the basin transect plots _bathurst_20m_amp_dip_section_and_chronostrat.pdf_ and _bathurst_2m_amp_dip_section_and_chronostrat.pdf_, which can be found under "figs/"

## 3. Extract age-depth models

Run _get_adm_from_carbocat_outputs.m_ in "data/matlab_outputs/" to extract age-depth models from the CarboCATLite outputs. This will generate the file _bathurst_2m_and_20m_amp_adm.mat_, which can be found under "data/matlab_outputs/".

## 4. Run analysis

Extract the data, run the analysis, and generate plots by running "src/R/analysis.R" in RStudio.
