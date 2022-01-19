import os
import multiprocessing as mp
import numpy as np
import pandas as pd
import pyemu
def main():

    try:
       os.remove(r'rk_model_glm_obs_dat.dat')
    except Exception as e:
       print(r'error removing tmp file:rk_model_glm_obs_dat.dat')
    pyemu.os_utils.run(r'ats --xml_file=rk_model_glm_input.xml')


if __name__ == '__main__':
    mp.freeze_support()
    main()

