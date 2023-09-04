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

# License

Copyright 2023 codeprimate

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
