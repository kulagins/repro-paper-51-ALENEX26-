** Run the script ./runOneDeviationLevel.sh with different dettings in experiments.yml to reproduce pictures from the paper. **
** The python evaluation is in the notebook AllScriptsPerPathToData.ipynb**

Prerequisites:
 * The code should be in a directory in the same root:
 		root
 			disk-dynamic-scheduler
 			repro-paper-51-ALENEX26

To reproduce:

* Fig. 6.1, D.3, E.1 : experiments A1-ndev, A2-ndev, A3-ndev and BASE-ndev; no change in the jupyter notebook necessary
* Fig 6.2 : experiments A1-30dev, A2-30dev, A3-30dev and BASE-30dev; change to 30dev in  the jupyter notebook
* Fig 6.3, D.1, D.2 : is a parameter study, reproducing it is costly. Cannot be reproduced with the script.
* Fig C.1 : experiments A1-dev, A2-dev, A3-dev and BASE-dev; change to 10dev in  the jupyter notebook
* Fig C.2 : experiments A1-bdev, A2-bdev, A3-10dev and BASE-bdev; change to 50dev in  the jupyter notebook
* Fig D.4: is not reproducible with new code; should be probably removed from the final version


