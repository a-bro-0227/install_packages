library(reticulate)

# py_install(c('pandas',
#              'seaborn',
#              'scipy',
#              'boto3',
#              'numpy',
#              'tensorflow',
#              'scikit-learn'),
#            method = 'auto')
py_install('pandas')
py_install('seaborn')
py_install('scipy')
py_install('boto3')
py_install('numpy')
py_install('tensorflow')
py_install('scikit-learn')
py_install('win32api')
