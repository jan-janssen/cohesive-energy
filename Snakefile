rule cohesive:
    output:
        "cohesive.csv",
        "cohesive.html"
    conda:
        "envs/cohesive.yaml"
    shell:
        "export PYIRONRESOURCEPATHS='./resources'; export PYIRONPROJECTPATHS='.'; papermill ./scripts/cohesive-energy.ipynb cohesive-energy.nbconvert.ipynb -k 'python3'"

