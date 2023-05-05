rule run_alphafold:
    singularity: "docker://ghcr.io/nihasa/fastqc-docker-cwl:latest"
    threads: 10
    input:
        "my_input.fastq"
    output:
        "my_outfile.html"
    shell:
        """
        fastqc --version
        """

# to run use:
# snakemake -s fastqc_workflow.smk --verbose --cores 40 --use-singularity 