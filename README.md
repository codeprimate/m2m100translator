# Translation App

This Python webapp is powered by the Facebook M2M100 multilingual encoder-decoder.

Learn More:
* https://huggingface.co/facebook/m2m100_1.2B
* https://about.fb.com/news/2020/10/first-multilingual-machine-translation-model/

# Dependencies

* Python
* pip
* curl

# Usage

```
# First, perform setup to download dependencies. Do this only once.
./setup.sh

# Then start
./start.sh
```

# Using Docker

```
# Download LLM model from HuggingFace to prevent redundant downloading during development
./download.sh

# Build
docker build -t translator .

# Start the container and listen on port 3000
docker run -p 3000:80 translator
```
