# We start with the official miniconda image
FROM continuumio/miniconda3

# Add the environment file
COPY environment.yml .

# Create environment
RUN conda env create -f environment.yml

# Initialize conda

RUN conda init bash
