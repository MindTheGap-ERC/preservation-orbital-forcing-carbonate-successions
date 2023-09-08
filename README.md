# Preservation of Orbital Forcing in Incomplete Carbonate Successions

Repository for the poster at the 17th Bathurst Meeting (International Meeting of Carbonate Sedimentologists) in
Naples, Italy, 5-7 September 2023.

## Abstract

Cyclostratigraphy has the potential to establish relative ages in sedimentary records with a temporal resolution greater than that of absolute dating methods such as radiometric dating. Though, stratigraphic incompleteness complicates this process and is a source for uncertainty in cyclostratigraphic age-depth models. As a result, cyclostratigraphic studies on sedimentary archives from pelagic and hemi-pelagic environments are usually less contested than those on more shallow-water sections.
To better quantify the impact of stratigraphic incompleteness on cyclostratigraphic results, we first quantify stratigraphic completeness throughout a carbonate platform, and then assess the impact on the recorded Milanković signal.  
Two-dimensional dip-sections generated by CarboCAT models of carbonate platform growth forced with insulation-driven eustatic sea-level oscillations generate synthetic stratigraphic columns and proxy records, and these are analyzed for presence of an insolation signal using the astrochron package.  
Our results show that if sea-level is driven by a Milanković signal, shallow water carbonate successions with moderate incompleteness are capable of recording said signal. This suggests that under accommodation-forcing by a Milanković signal, cyclostratigraphy can help establish relative time scales in shallow water environments.

## Authors

__Niklas Hohmann__  (Presenter, Maintainer)  
Utrecht University  
email: n.h.hohmann [at] uu.nl  
Web page: [www.uu.nl/staff/NHohmann](https://www.uu.nl/staff/NHHohmann)  
ORCID: [0000-0003-1559-1838](https://orcid.org/0000-0003-1559-1838)

__Peter Burgess__  
University of Liverpool  
Web page: [www.liverpool.ac.uk/environmental-sciences/staff/peter-burgess](https://www.liverpool.ac.uk/environmental-sciences/staff/peter-burgess/)

__David De Vleeschouwer__  
Westfälische Wilhelms-Universität Münster  
Web page: [www.uni-muenster.de/GeoPalaeontologie/erdsystemforschung/staff/DeVleeschouwer](https://www.uni-muenster.de/GeoPalaeontologie/erdsystemforschung/staff/DeVleeschouwer.html)  
ORCID: [0000-0002-3323-807X](https://orcid.org/0000-0002-3323-807X)

__Emilia Jarochowska__  
Utrecht University  
email: e.b.jarochowska [at] uu.nl  
Web page: [www.uu.nl/staff/EBJarochowska](https://www.uu.nl/staff/EBJarochowska)  
ORCID: [0000-0001-8937-9405](https://orcid.org/0000-0001-8937-9405)

## Poster

![poster/Hohmann_Bathurst_Poster.svg](poster/Hohmann_Bathurst_Poster.svg)

## Reproduction of Results

See file _REPRODUCEME.md_

## Repository Structure

* _data_ : Folder
  * _matlab_outputs_ : Data generated by CarboCATLite
  * _r_outputs_ : Sea level curves
* _figs_ : Folder with figures
* _src_ : Folder with code
  * _R_ : folder with R code
    * _utils.R_ : Utility functions to generate SL curve
    * _analysis.R_ : Main analysis
* _.gitignore_ : untracked files
* _LICENSE_ : License text
* _README_ : Readme file
* _REPRODUCEME_ : Intructions for reproduction of results
* _preservation-orbital-forcing-carbonate-successions.Rproj_ : Project file for Rstudio IDE

## Copyright

Copyright 2023 Netherlands eScience Center and Utrecht University

## License

Apache 2.0 License, see LICENSE file for license text.

## Funding information

Funded by the European Union (ERC, MindTheGap, StG project no 101041077). Views and opinions expressed are however those of the author(s) only and do not necessarily reflect those of the European Union or the European Research Council. Neither the European Union nor the granting authority can be held responsible for them.
![European Union and European Research Council logos](https://erc.europa.eu/sites/default/files/2023-06/LOGO_ERC-FLAG_FP.png)
